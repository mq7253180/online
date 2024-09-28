import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;

public class Test {
	public static void main(String[] args) throws UnknownHostException, SocketException {
		InetAddress localHost = InetAddress.getLocalHost();
		System.out.println("IP===" + localHost.getHostAddress());
		System.out.println("IP***" + InetAddress.getLocalHost().getHostAddress());
		Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
		while (networkInterfaces.hasMoreElements()) {
			NetworkInterface networkInterface = networkInterfaces.nextElement();
			Enumeration<InetAddress> inetAddresses = networkInterface.getInetAddresses();
			while (inetAddresses.hasMoreElements()) {
				InetAddress inetAddress = inetAddresses.nextElement();
//				if (!inetAddress.isLinkLocalAddress() && !inetAddress.isLoopbackAddress() && inetAddress.isSiteLocalAddress())
					System.out.println("IP----" + inetAddress.getHostAddress());
			}
		}
	}

}

