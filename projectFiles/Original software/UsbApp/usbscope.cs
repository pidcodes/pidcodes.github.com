/* A program to demonstrate the use of the firmare USB with a simple Atmel TINY45
   Compiled and tested with Visual Studio 2005
   You need UsbLibrary.dll in the app path.
 
   Copyright Jacques Lepot 2008-2009

 */
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using UsbLibrary;

namespace UsbScope
{
    public partial class usbscope : Form
    {

        int ti=0;                   
        int smplcnt = 0;
        float old_gval1 = 0;
        float old_gval2 = 0;

        float[] valbuf1 = new float[128];
        float[] valbuf2 = new float[128];
        int bufptr = 0;
        int maxbuf = 20;

        int min1= 9999;
        int max1 = -1;
        int min2 = 9999;
        int max2 = -1;

        bool paused = false;

        Graphics g ;

        public usbscope()
        {
            InitializeComponent();
            // Change Pid and Vid if needed
            this.usb.ProductId = 0x0002;
            this.usb.VendorId = 0x4242;
            g = pictureBox1.CreateGraphics();
        }

        private void usb_OnDeviceArrived(object sender, EventArgs e)
        {
           toolStripStatusLabel1.Text  = "Found HID Device";
        }

        private void usb_OnDeviceRemoved(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                Invoke(new EventHandler(usb_OnDeviceRemoved), new object[] { sender, e });
            }
            else
            {
                toolStripStatusLabel1.Text = "Device removed";
            }
        }

        private void usb_OnSpecifiedDeviceArrived(object sender, EventArgs e)
        {
            toolStripStatusLabel1.Text = "Found my HID Device";
        }

        private void usb_OnSpecifiedDeviceRemoved(object sender, EventArgs e)
        {
            if (InvokeRequired)
            {
                Invoke(new EventHandler(usb_OnSpecifiedDeviceRemoved), new object[] { sender, e });
            }
            else
            {
                toolStripStatusLabel1.Text = "my Device removed";
            }
        }

        protected override void OnHandleCreated(EventArgs e)
        {
            base.OnHandleCreated(e);
            usb.RegisterHandle(Handle);
        }

        protected override void WndProc(ref Message m)
        {
            usb.ParseMessages(ref m);
            base.WndProc(ref m);	// pass message on to base form
        }


        private void usb_OnDataRecieved(object sender, DataRecievedEventArgs args)
        {
            
            if (InvokeRequired)
            {
                try
                {
                    Invoke(new DataRecievedEventHandler(usb_OnDataRecieved), new object[] { sender, args });
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }
            }
            else
                if(!paused){
                    
                    int captureval1 = (int)((args.data[1] * 256 + args.data[2]) * 0.92f);
                    int captureval2 = (int)((args.data[3] * 256 + args.data[4]) * 0.92f);
                    smplcnt++;
 
                    if (checkBox2.Checked)
                    // filtrage moyenne mobile
                    {
                        valbuf1[bufptr] = captureval1;
                        valbuf2[bufptr] = captureval2;
                        bufptr++; if (bufptr > maxbuf) bufptr = 0;

                        float filtered1 = 0f;
                        float filtered2 = 0f;
                        for (int i = 0; i < maxbuf; i++) { filtered1 += valbuf1[i]; filtered2 += valbuf2[i]; }
                        captureval1 = (int)(filtered1 / maxbuf);
                        captureval2 = (int)(filtered2 / maxbuf);
                    }
                
                    display(captureval1, captureval2);
            }
        }

        private void display(int captureval1,int captureval2)

        {   

        // compute min-max
            if (captureval1 > max1) { max1 = captureval1; label_max1.Text = max1.ToString(); }
            if (captureval1 < min1) { min1 = captureval1; label_min1.Text = min1.ToString(); }
            if (captureval2 > max2) { max2 = captureval2; label_max2.Text = max2.ToString(); }
            if (captureval2 < min2) { min2 = captureval2; label_min2.Text = min2.ToString(); } 

        // l'affichage numérique n'est mis a jour que 2 fois par seconde
                if (!timer1.Enabled)
                {
                    label1.Text = captureval1.ToString().Trim();
                    label3.Text = captureval2.ToString().Trim();
                    timer1.Enabled = true;
                }
        // graphique
                if ((smplcnt % trackBar1.Value == 0) )
                {
                    float gval1 = captureval1 / 2600.0f;
                    float gval2 = captureval2 / 2600.0f;
                    gval1 = (pictureBox1.Height - 10) * (1.0f - gval1);
                    gval2 = (pictureBox1.Height - 10) * (1.0f - gval2);

                    g.DrawLine(System.Drawing.Pens.Black, ti + 1, 0, ti + 1, pictureBox1.Height);
                    g.DrawLine(System.Drawing.Pens.BlueViolet, ti + 2, 0, ti + 2, pictureBox1.Height);
                   
                    g.DrawLine(System.Drawing.Pens.Red, ti, old_gval1, ti + 1, gval1);
                    g.DrawLine(System.Drawing.Pens.Aqua, ti, old_gval2, ti + 1, gval2);

                    old_gval1 = gval1;
                    old_gval2 = gval2;
                    ti++;
                    if (ti > pictureBox1.Width) { ti = 0; g.DrawLine(System.Drawing.Pens.Black, 0, 0, 0, pictureBox1.Height); }
                }
        }
        private void button1_Click(object sender, EventArgs e)
        // reset min max
        {
             min1 = 9999;
             max1 = -1;
             min2 = 9999;
             max2 = -1;
             label_max1.Text = max1.ToString();
             label_min1.Text = min1.ToString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            timer1.Enabled = !timer1.Enabled;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            paused = !paused; if (paused) button2.Text = "RUN"; else button2.Text = "STOP";
        }

        
  
    }
}