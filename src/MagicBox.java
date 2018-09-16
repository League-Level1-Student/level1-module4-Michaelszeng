/*
 *    Copyright (c) The League of Amazing Programmers 2013-2018
 *    Level 1
 */


import java.applet.AudioClip;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

public class MagicBox extends JPanel implements Runnable, MouseListener {
	
	/*
	 * Work together as a TEAM of 2 or 3 to make this project. We are going to hide secrets within the magic box. 
	 * When the user clicks on a secret place, stuff will happen.
	 * 
	 * 1. Make the frame respond to mouse clicks.
	 
	 * 2. When the mouse is clicked, use the Media Palace (bit.ly/media-palace) to play sounds, show images or speak.
	 * 
	 * 3. backgroundImage.getRGB(keyEvent.getX(), keyEvent.getY()) will give you the color of the current pixel.
	 */
	MediaPalace mediaPalace = new MediaPalace();
	BufferedImage backgroundImage;
	JFrame frame = new JFrame("The Magic Box contains many secrets...");
	
	public static void main(String[] args) throws Exception {
		SwingUtilities.invokeLater(new MagicBox());
	}

	@Override
	public void run() {
		try {
			loadBackgroundImage();
			createUI();
		} catch (Exception w) {
			System.err.println(w.getMessage());
		}
	}

	private void createUI() {
		frame.add(this);
		setPreferredSize(new Dimension(backgroundImage.getWidth(), backgroundImage.getHeight()));
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setVisible(true);
		frame.addMouseListener(this);
	}

	private void loadBackgroundImage() throws Exception {
		String imageFile = "src/magic-box.jpg";
		try {
			backgroundImage = ImageIO.read(new File(imageFile));
		} catch (IOException e) {
			throw new Exception("Could not load image: " + imageFile);
		}
	}

	@Override
	public void paintComponent(Graphics g) {
		g.drawImage(backgroundImage, 0, 0, null);
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		if (e.getY()<194 ) {
			JFrame frame2 = new JFrame();
			frame2.setVisible(true);
			frame2.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			JLabel label = mediaPalace.loadImageFromWithinProject("dog.jpg");
			frame2.add(label);
			frame2.pack();
		}
		System.out.println("x=" + e.getX());
		System.out.println("y=" + e.getY());
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		if (e.getY()>193 && e.getY()<387) {
			JFrame frame3 = new JFrame();
			frame3.setVisible(true);
			frame3.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			JLabel label2 = mediaPalace.loadImageFromHardDrive("src/Mike.png");
			frame3.add(label2);
			frame3.pack();
		}
		if (e.getY()>579 && e.getY()<773) {
			AudioClip audioClip = mediaPalace.loadSound("dog.wav");
			audioClip.play();
		}
		if (e.getY()>772 && e.getY()<966) {
			mediaPalace.playSoundFromInternet("https://soundcloud.com/chekparren/dog");
		}
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		if (e.getY()>386 && e.getY()<580) {
			mediaPalace.playMusicOnComputer("src/dog.mp3");
		}
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

}


