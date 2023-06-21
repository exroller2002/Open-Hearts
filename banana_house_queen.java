import java.awt.*;
import javax.swing.*;

public class OpenHearts { 
	
	public static void main(String[] args) {
		
		// create main application frame
		JFrame appFrame = new JFrame("Open Hearts");
		appFrame.setSize(400, 400);
		appFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// create main panel to hold game board
		JPanel mainPanel = new JPanel(new BorderLayout());
		appFrame.getContentPane().add(mainPanel);

		// create game board and add it to main panel
		Board board = new Board();
		mainPanel.add(board, BorderLayout.CENTER);

		// create menu bar and add it to main panel
		JMenuBar menuBar = new JMenuBar();
		mainPanel.add(menuBar, BorderLayout.NORTH);

		// create menus
		JMenu gameMenu = new JMenu("Game");
		menuBar.add(gameMenu);
		JMenu helpMenu = new JMenu("Help");
		menuBar.add(helpMenu);

		// add menu items to each menu
		gameMenu.add(getNewGameMenuItem(board));
		gameMenu.add(getQuitMenuItem());
		helpMenu.add(getAboutMenuItem());

		// display the application frame
		appFrame.setVisible(true);
	}

	// create a menu item to start a new game
	private static JMenuItem getNewGameMenuItem(final Board board) {
		JMenuItem newGameMenuItem = new JMenuItem("New Game");
		newGameMenuItem.addActionListener(
			e -> { board.startNewGame(); });
		return newGameMenuItem;
	}

	// create a menu item to quit the application
	private static JMenuItem getQuitMenuItem() {
		JMenuItem quitMenuItem = new JMenuItem("Quit");
		quitMenuItem.addActionListener(e -> { System.exit(0); });
		return quitMenuItem;
	}

	// create a menu item to show the about dialog
	private static JMenuItem getAboutMenuItem() {
		JMenuItem aboutMenuItem = new JMenuItem("About");
		aboutMenuItem.addActionListener(
			e -> { showAboutDialog(); });
		return aboutMenuItem;
	}

	// show the about dialog
	private static void showAboutDialog() {
		JOptionPane.showMessageDialog(
			null, "Open Hearts\nCopyright 2019",
			"About", JOptionPane.INFORMATION_MESSAGE);
	}

	// inner class for game board
	private static class Board extends JPanel {
		public Board() {
			// set the preferred size
			setPreferredSize(new Dimension(350, 350));

			// set background color
			setBackground(new Color(0, 120, 0));

			// create the initial heart icon
			createHeartIcon();

			// add mouse listener
			addMouseListener(new MouseAdapter() {
				public void mousePressed(MouseEvent e) {
					// move the heart icon
					heartX = e.getX();
					heartY = e.getY();
					repaint();
				}
			});
		}

		// start a new game
		public void startNewGame() {
			createHeartIcon();
			repaint();
		}

		// override paintComponent to draw the heart icon
		public void paintComponent(Graphics g) {
			super.paintComponent(g);
			g.drawImage(heart, heartX, heartY, this);
		}

		// create the heart icon image
		private void createHeartIcon() {
			// create a 32x32 image
			heart = new BufferedImage(32, 32, BufferedImage.TYPE_INT_ARGB);

			// get the graphics context for the image
			Graphics2D g2D = (Graphics2D) heart.getGraphics();

			// set the rendering hints
			g2D.setRenderingHint(
				RenderingHints.KEY_ANTIALIASING,
				RenderingHints.VALUE_ANTIALIAS_ON);

			// draw the heart
			drawHeart(g2D);
		}

		// draw the heart onto the given graphics context
		private void drawHeart(Graphics2D g2D) {
			g2D.setPaint(new Color(0xFF, 0x00, 0x00));

			// draw the outline
			g2D.draw(new Arc2D.Double(
				0, 16, 32, 32, 0, 360, Arc2D.CHORD));
			g2D.fill(new Ellipse2D.Double(
				16, 0, 16, 32));

			// draw the fill
			g2D.fill(new Arc2D.Double(
				0, 16, 32, 32, 0, -180, Arc2D.CHORD));

			// draw the "V"
			g2D.fill(new Polygon(
				new int[] { 16, 24, 8 }, 
				new int[] { 24, 24, 16 }, 3));
		}

		// declare instance variables
		private BufferedImage heart;
		private int heartX;
		private int heartY;
	}
}