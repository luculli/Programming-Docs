<!DOCTYPE html>
<html lang='en'>
<head>
<title>qvm-screenrecord.sh « tools - laurent-tools - The set of scripts that make Laurent's world go round.</title>
<meta name='generator' content='cgit v1.2.3-10-g9804'/>
<meta name='robots' content='index, nofollow'/>
<link rel='stylesheet' type='text/css' href='/cgit.css'/>
<link rel='shortcut icon' href='/favicon.ico'/>
<link rel='alternate' title='Atom feed' href='https://git.zx2c4.com/laurent-tools/atom/tools/qvm-screenrecord.sh?h=master' type='application/atom+xml'/>
<link rel='vcs-git' href='https://git.zx2c4.com/laurent-tools' title='laurent-tools Git repository'/>
<link rel='vcs-git' href='git://git.zx2c4.com/laurent-tools' title='laurent-tools Git repository'/>
<link rel='vcs-git' href='ssh://git@git.zx2c4.com/laurent-tools' title='laurent-tools Git repository'/>
</head>
<body>
<div id='cgit'><table id='header'>
<tr>
<td class='logo' rowspan='2'><a href='http://www.zx2c4.com/'><img src='/cgit.png' alt='cgit logo'/></a></td>
<td class='main'><a href='/'>index</a> : <a title='laurent-tools' href='/laurent-tools/'>laurent-tools</a></td><td class='form'><form method='get'>
<select name='h' onchange='this.form.submit();'>
<option value='jsaccess_store'>jsaccess_store</option>
<option value='master' selected='selected'>master</option>
</select> <input type='submit' value='switch'/></form></td></tr>
<tr><td class='sub'>The set of scripts that make Laurent's world go round.</td><td class='sub right'>Laurent Ghigonis</td></tr></table>
<table class='tabs'><tr><td>
<a href='/laurent-tools/about/'>about</a><a href='/laurent-tools/'>summary</a><a href='/laurent-tools/refs/'>refs</a><a href='/laurent-tools/log/tools/qvm-screenrecord.sh'>log</a><a class='active' href='/laurent-tools/tree/tools/qvm-screenrecord.sh'>tree</a><a href='/laurent-tools/commit/tools/qvm-screenrecord.sh'>commit</a><a href='/laurent-tools/diff/tools/qvm-screenrecord.sh'>diff</a><a href='/laurent-tools/stats/tools/qvm-screenrecord.sh'>stats</a></td><td class='form'><form class='right' method='get' action='/laurent-tools/log/tools/qvm-screenrecord.sh'>
<select name='qt'>
<option value='grep'>log msg</option>
<option value='author'>author</option>
<option value='committer'>committer</option>
<option value='range'>range</option>
</select>
<input class='txt' type='search' size='10' name='q' value=''/>
<input type='submit' value='search'/>
</form>
</td></tr></table>
<div class='path'>path: <a href='/laurent-tools/tree/'>root</a>/<a href='/laurent-tools/tree/tools'>tools</a>/<a href='/laurent-tools/tree/tools/qvm-screenrecord.sh'>qvm-screenrecord.sh</a></div><div class='content'>blob: 57a71992aa824f740f6098be67cedd0941e31e36 (<a href='/laurent-tools/plain/tools/qvm-screenrecord.sh'>plain</a>) (<a href='/laurent-tools/blame/tools/qvm-screenrecord.sh'>blame</a>)
<table summary='blob content' class='blob'>
<tr><td class='linenumbers'><pre><a id='n1' href='#n1'>1</a>
<a id='n2' href='#n2'>2</a>
<a id='n3' href='#n3'>3</a>
<a id='n4' href='#n4'>4</a>
<a id='n5' href='#n5'>5</a>
<a id='n6' href='#n6'>6</a>
<a id='n7' href='#n7'>7</a>
<a id='n8' href='#n8'>8</a>
<a id='n9' href='#n9'>9</a>
<a id='n10' href='#n10'>10</a>
<a id='n11' href='#n11'>11</a>
<a id='n12' href='#n12'>12</a>
<a id='n13' href='#n13'>13</a>
<a id='n14' href='#n14'>14</a>
<a id='n15' href='#n15'>15</a>
<a id='n16' href='#n16'>16</a>
<a id='n17' href='#n17'>17</a>
<a id='n18' href='#n18'>18</a>
<a id='n19' href='#n19'>19</a>
<a id='n20' href='#n20'>20</a>
<a id='n21' href='#n21'>21</a>
<a id='n22' href='#n22'>22</a>
<a id='n23' href='#n23'>23</a>
<a id='n24' href='#n24'>24</a>
<a id='n25' href='#n25'>25</a>
<a id='n26' href='#n26'>26</a>
<a id='n27' href='#n27'>27</a>
<a id='n28' href='#n28'>28</a>
<a id='n29' href='#n29'>29</a>
<a id='n30' href='#n30'>30</a>
<a id='n31' href='#n31'>31</a>
<a id='n32' href='#n32'>32</a>
<a id='n33' href='#n33'>33</a>
<a id='n34' href='#n34'>34</a>
<a id='n35' href='#n35'>35</a>
<a id='n36' href='#n36'>36</a>
<a id='n37' href='#n37'>37</a>
<a id='n38' href='#n38'>38</a>
<a id='n39' href='#n39'>39</a>
<a id='n40' href='#n40'>40</a>
<a id='n41' href='#n41'>41</a>
<a id='n42' href='#n42'>42</a>
<a id='n43' href='#n43'>43</a>
<a id='n44' href='#n44'>44</a>
<a id='n45' href='#n45'>45</a>
<a id='n46' href='#n46'>46</a>
<a id='n47' href='#n47'>47</a>
<a id='n48' href='#n48'>48</a>
<a id='n49' href='#n49'>49</a>
<a id='n50' href='#n50'>50</a>
<a id='n51' href='#n51'>51</a>
<a id='n52' href='#n52'>52</a>
<a id='n53' href='#n53'>53</a>
<a id='n54' href='#n54'>54</a>
<a id='n55' href='#n55'>55</a>
<a id='n56' href='#n56'>56</a>
<a id='n57' href='#n57'>57</a>
<a id='n58' href='#n58'>58</a>
<a id='n59' href='#n59'>59</a>
<a id='n60' href='#n60'>60</a>
<a id='n61' href='#n61'>61</a>
<a id='n62' href='#n62'>62</a>
<a id='n63' href='#n63'>63</a>
<a id='n64' href='#n64'>64</a>
<a id='n65' href='#n65'>65</a>
<a id='n66' href='#n66'>66</a>
<a id='n67' href='#n67'>67</a>
<a id='n68' href='#n68'>68</a>
<a id='n69' href='#n69'>69</a>
<a id='n70' href='#n70'>70</a>
<a id='n71' href='#n71'>71</a>
<a id='n72' href='#n72'>72</a>
<a id='n73' href='#n73'>73</a>
<a id='n74' href='#n74'>74</a>
<a id='n75' href='#n75'>75</a>
<a id='n76' href='#n76'>76</a>
<a id='n77' href='#n77'>77</a>
<a id='n78' href='#n78'>78</a>
<a id='n79' href='#n79'>79</a>
<a id='n80' href='#n80'>80</a>
<a id='n81' href='#n81'>81</a>
<a id='n82' href='#n82'>82</a>
<a id='n83' href='#n83'>83</a>
<a id='n84' href='#n84'>84</a>
<a id='n85' href='#n85'>85</a>
<a id='n86' href='#n86'>86</a>
<a id='n87' href='#n87'>87</a>
<a id='n88' href='#n88'>88</a>
<a id='n89' href='#n89'>89</a>
<a id='n90' href='#n90'>90</a>
</pre></td>
<td class='lines'><pre><code><style>pre { line-height: 125%; margin: 0; }
td.linenos pre { color: #000000; background-color: #f0f0f0; padding: 0 5px 0 5px; }
span.linenos { color: #000000; background-color: #f0f0f0; padding: 0 5px 0 5px; }
td.linenos pre.special { color: #000000; background-color: #ffffc0; padding: 0 5px 0 5px; }
span.linenos.special { color: #000000; background-color: #ffffc0; padding: 0 5px 0 5px; }
.highlight .hll { background-color: #ffffcc }
.highlight .c { color: #888888 } /* Comment */
.highlight .err { color: #a61717; background-color: #e3d2d2 } /* Error */
.highlight .k { color: #008800; font-weight: bold } /* Keyword */
.highlight .ch { color: #888888 } /* Comment.Hashbang */
.highlight .cm { color: #888888 } /* Comment.Multiline */
.highlight .cp { color: #cc0000; font-weight: bold } /* Comment.Preproc */
.highlight .cpf { color: #888888 } /* Comment.PreprocFile */
.highlight .c1 { color: #888888 } /* Comment.Single */
.highlight .cs { color: #cc0000; font-weight: bold; background-color: #fff0f0 } /* Comment.Special */
.highlight .gd { color: #000000; background-color: #ffdddd } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #aa0000 } /* Generic.Error */
.highlight .gh { color: #333333 } /* Generic.Heading */
.highlight .gi { color: #000000; background-color: #ddffdd } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #555555 } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #666666 } /* Generic.Subheading */
.highlight .gt { color: #aa0000 } /* Generic.Traceback */
.highlight .kc { color: #008800; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008800; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008800; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008800 } /* Keyword.Pseudo */
.highlight .kr { color: #008800; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #888888; font-weight: bold } /* Keyword.Type */
.highlight .m { color: #0000DD; font-weight: bold } /* Literal.Number */
.highlight .s { color: #dd2200; background-color: #fff0f0 } /* Literal.String */
.highlight .na { color: #336699 } /* Name.Attribute */
.highlight .nb { color: #003388 } /* Name.Builtin */
.highlight .nc { color: #bb0066; font-weight: bold } /* Name.Class */
.highlight .no { color: #003366; font-weight: bold } /* Name.Constant */
.highlight .nd { color: #555555 } /* Name.Decorator */
.highlight .ne { color: #bb0066; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0066bb; font-weight: bold } /* Name.Function */
.highlight .nl { color: #336699; font-style: italic } /* Name.Label */
.highlight .nn { color: #bb0066; font-weight: bold } /* Name.Namespace */
.highlight .py { color: #336699; font-weight: bold } /* Name.Property */
.highlight .nt { color: #bb0066; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #336699 } /* Name.Variable */
.highlight .ow { color: #008800 } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #0000DD; font-weight: bold } /* Literal.Number.Bin */
.highlight .mf { color: #0000DD; font-weight: bold } /* Literal.Number.Float */
.highlight .mh { color: #0000DD; font-weight: bold } /* Literal.Number.Hex */
.highlight .mi { color: #0000DD; font-weight: bold } /* Literal.Number.Integer */
.highlight .mo { color: #0000DD; font-weight: bold } /* Literal.Number.Oct */
.highlight .sa { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Affix */
.highlight .sb { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Backtick */
.highlight .sc { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Char */
.highlight .dl { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Delimiter */
.highlight .sd { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Doc */
.highlight .s2 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Double */
.highlight .se { color: #0044dd; background-color: #fff0f0 } /* Literal.String.Escape */
.highlight .sh { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Heredoc */
.highlight .si { color: #3333bb; background-color: #fff0f0 } /* Literal.String.Interpol */
.highlight .sx { color: #22bb22; background-color: #f0fff0 } /* Literal.String.Other */
.highlight .sr { color: #008800; background-color: #fff0ff } /* Literal.String.Regex */
.highlight .s1 { color: #dd2200; background-color: #fff0f0 } /* Literal.String.Single */
.highlight .ss { color: #aa6600; background-color: #fff0f0 } /* Literal.String.Symbol */
.highlight .bp { color: #003388 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0066bb; font-weight: bold } /* Name.Function.Magic */
.highlight .vc { color: #336699 } /* Name.Variable.Class */
.highlight .vg { color: #dd7700 } /* Name.Variable.Global */
.highlight .vi { color: #3333bb } /* Name.Variable.Instance */
.highlight .vm { color: #336699 } /* Name.Variable.Magic */
.highlight .il { color: #0000DD; font-weight: bold } /* Literal.Number.Integer.Long */</style><div class="highlight"><pre><span></span><span class="ch">#!/bin/sh</span>

<span class="c1"># Record desktop in Qubes Dom0 and copy video to AppVM</span>
<span class="c1"># Dependencies: recordmydesktop (sudo qubes-dom0-update recordmydesktop)</span>
<span class="c1"># If you want create a keyboard shortcut you should run it in Konsole</span>
<span class="c1"># Example: konsole -e qvm-screenrecord.sh -s -n</span>
<span class="c1"># 2013, Laurent Ghigonis &lt;laurent@p1sec.com&gt;</span>

<span class="nv">DOM0_SHOTS_DIR</span><span class="o">=</span><span class="nv">$HOME</span>/shots
<span class="nv">APPVM_SHOTS_DIR</span><span class="o">=</span>/home/user/shots
<span class="nv">QUBES_DOM0_APPVMS</span><span class="o">=</span>/var/lib/qubes/appvms/

usage<span class="o">()</span> <span class="o">{</span>
	<span class="nb">echo</span> <span class="s2">&quot;</span><span class="nv">$program</span><span class="s2"> [-hns]&quot;</span>
	<span class="nb">echo</span> -e <span class="s2">&quot;\t-n : after capturing, run nautilus in AppVM&quot;</span>
	<span class="nb">echo</span> -e <span class="s2">&quot;\t-s : select window to capture&quot;</span>
<span class="o">}</span>

<span class="nv">program</span><span class="o">=</span><span class="s2">&quot;`basename </span><span class="nv">$0</span><span class="s2">`&quot;</span>
<span class="nv">mode_nautilus</span><span class="o">=</span><span class="m">0</span>
<span class="nv">mode_select</span><span class="o">=</span><span class="m">0</span>
<span class="nv">opts</span><span class="o">=</span><span class="s2">&quot;</span><span class="k">$(</span>getopt -o hns -n <span class="s2">&quot;</span><span class="nv">$program</span><span class="s2">&quot;</span> -- <span class="s2">&quot;</span><span class="nv">$@</span><span class="s2">&quot;</span><span class="k">)</span><span class="s2">&quot;</span>
<span class="nv">err</span><span class="o">=</span><span class="nv">$?</span>
<span class="nb">eval</span> <span class="nb">set</span> -- <span class="s2">&quot;</span><span class="nv">$opts</span><span class="s2">&quot;</span>
<span class="k">while</span> true<span class="p">;</span> <span class="k">do</span> <span class="k">case</span> <span class="nv">$1</span> in
	-h<span class="o">)</span> usage<span class="p">;</span> <span class="nb">exit</span> <span class="m">1</span> <span class="p">;;</span>
	-n<span class="o">)</span> <span class="nv">mode_nautilus</span><span class="o">=</span><span class="m">1</span><span class="p">;</span> <span class="nb">shift</span> <span class="p">;;</span>
	-s<span class="o">)</span> <span class="nv">mode_select</span><span class="o">=</span><span class="m">1</span><span class="p">;</span> <span class="nb">shift</span> <span class="p">;;</span>
	--<span class="o">)</span> shift<span class="p">;</span> <span class="nb">break</span> <span class="p">;;</span>
<span class="k">esac</span> <span class="k">done</span>
<span class="o">[[</span> <span class="nv">$err</span> -ne <span class="m">0</span> <span class="o">]]</span> <span class="o">&amp;&amp;</span> usage <span class="o">&amp;&amp;</span> <span class="nb">exit</span> <span class="m">1</span>

mkdir -p <span class="nv">$DOM0_SHOTS_DIR</span> <span class="o">||</span><span class="nb">exit</span> <span class="m">1</span>
<span class="nv">d</span><span class="o">=</span><span class="sb">`</span>date +<span class="s2">&quot;%Y%m%d-%H%M&quot;</span><span class="sb">`</span>
<span class="nv">tmpname</span><span class="o">=</span><span class="nv">$d</span>.ogv

<span class="k">if</span> <span class="o">[</span> <span class="nv">$mode_select</span> -eq <span class="m">1</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>
	<span class="nb">echo</span> <span class="s2">&quot;[-] select window to record&quot;</span>
	<span class="nb">echo</span> <span class="s2">&quot;Press &lt;enter&gt; when ready to select&quot;</span>
	<span class="nb">read</span> a
	<span class="nb">unset</span> x y w h
	<span class="nb">eval</span> <span class="k">$(</span>xwininfo <span class="p">|</span> <span class="se">\</span>
		sed -n -e <span class="s2">&quot;s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p&quot;</span> <span class="se">\</span>
		       -e <span class="s2">&quot;s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p&quot;</span> <span class="se">\</span>
		       -e <span class="s2">&quot;s/^ \+Width: \+\([0-9]\+\).*/w=\1/p&quot;</span> <span class="se">\</span>
		       -e <span class="s2">&quot;s/^ \+Height: \+\([0-9]\+\).*/h=\1/p&quot;</span> <span class="k">)</span>
	<span class="nv">record_opts</span><span class="o">=</span><span class="s2">&quot;-x </span><span class="nv">$x</span><span class="s2"> -y </span><span class="nv">$y</span><span class="s2"> --width </span><span class="nv">$w</span><span class="s2"> --height </span><span class="nv">$h</span><span class="s2">&quot;</span>
	<span class="nb">echo</span> <span class="s2">&quot;[-] recording zone at </span><span class="si">${</span><span class="nv">x</span><span class="si">}</span><span class="s2"> </span><span class="si">${</span><span class="nv">y</span><span class="si">}</span><span class="s2"> size </span><span class="si">${</span><span class="nv">w</span><span class="si">}</span><span class="s2"> </span><span class="si">${</span><span class="nv">h</span><span class="si">}</span><span class="s2">&quot;</span>
<span class="k">else</span>
	<span class="nb">echo</span> <span class="s2">&quot;[-] recording root window&quot;</span>
	<span class="nb">echo</span> <span class="s2">&quot;Press &lt;enter&gt; when ready to record&quot;</span>
	<span class="nb">read</span> a
	<span class="nv">record_opts</span><span class="o">=</span><span class="s2">&quot;&quot;</span>
<span class="k">fi</span>

<span class="nb">echo</span>
<span class="nb">echo</span> <span class="s2">&quot;=============================&quot;</span>
<span class="nb">echo</span> <span class="s2">&quot;Hit Crtl-C to end the capture&quot;</span>
<span class="nb">echo</span> <span class="s2">&quot;=============================&quot;</span>
<span class="nb">echo</span>
recordmydesktop --no-sound -o <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$tmpname</span> <span class="nv">$record_opts</span> <span class="nv">$@</span>
<span class="nv">size</span><span class="o">=</span><span class="sb">`</span>ls -hs <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$tmpname</span> <span class="p">|</span>cut -d<span class="s1">&#39; &#39;</span> -f1<span class="sb">`</span>

<span class="nv">title</span><span class="o">=</span><span class="sb">`</span>kdialog --inputbox <span class="s2">&quot;Enter capture title (</span><span class="nv">$size</span><span class="s2">)&quot;</span> --title <span class="s2">&quot;</span><span class="nv">$program</span><span class="s2">&quot;</span><span class="sb">`</span>
<span class="o">[[</span> X<span class="s2">&quot;</span><span class="nv">$title</span><span class="s2">&quot;</span> <span class="o">=</span> X<span class="s2">&quot;&quot;</span> <span class="o">]]</span> <span class="o">&amp;&amp;</span> <span class="nb">exit</span> <span class="m">1</span>
<span class="nv">vidname</span><span class="o">=</span><span class="si">${</span><span class="nv">d</span><span class="si">}</span>_<span class="si">${</span><span class="nv">title</span><span class="si">}</span>.ogv

<span class="nb">echo</span> <span class="s2">&quot;[-] saving </span><span class="nv">$DOM0_SHOTS_DIR</span><span class="s2">/</span><span class="nv">$vidname</span><span class="s2"> (</span><span class="nv">$size</span><span class="s2">)&quot;</span>
mv <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$tmpname</span> <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$vidname</span>
ls -lh <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$vidname</span>

<span class="nv">choice</span><span class="o">=</span><span class="sb">`</span>ls <span class="nv">$QUBES_DOM0_APPVMS</span> <span class="p">|</span>sed <span class="s1">&#39;s/\([^ ]*\)/\1 \1/g&#39;</span><span class="sb">`</span>
<span class="nv">appvm</span><span class="o">=</span><span class="sb">`</span>kdialog --menu <span class="s2">&quot;Select destination AppVM&quot;</span> <span class="nv">$choice</span> --title <span class="s2">&quot;</span><span class="nv">$program</span><span class="s2">&quot;</span><span class="sb">`</span>

<span class="k">if</span> <span class="o">[</span> X<span class="s2">&quot;</span><span class="nv">$appvm</span><span class="s2">&quot;</span> !<span class="o">=</span> X<span class="s2">&quot;&quot;</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>
	<span class="k">if</span> <span class="o">[</span> <span class="nv">$mode_nautilus</span> -eq <span class="m">1</span> <span class="o">]</span><span class="p">;</span> <span class="k">then</span>
		<span class="nb">echo</span> <span class="s2">&quot;[-] running nautilus in AppVM&quot;</span>
		qvm-run <span class="nv">$appvm</span> <span class="s2">&quot;nautilus </span><span class="nv">$APPVM_SHOTS_DIR</span><span class="s2">&quot;</span>
	<span class="k">fi</span>

	<span class="nb">echo</span> <span class="s2">&quot;[-] copy to AppVM </span><span class="nv">$appvm</span><span class="s2">&quot;</span>
	qvm-run <span class="nv">$appvm</span> <span class="s2">&quot;mkdir -p </span><span class="nv">$APPVM_SHOTS_DIR</span><span class="s2">&quot;</span>
	<span class="nb">echo</span> <span class="s2">&quot;[-] copying </span><span class="nv">$APPVM_SHOTS_DIR</span><span class="s2">/</span><span class="nv">$vidname</span><span class="s2">&quot;</span>
	cat <span class="nv">$DOM0_SHOTS_DIR</span>/<span class="nv">$vidname</span> <span class="se">\</span>
		<span class="p">|</span>qvm-run --pass-io <span class="nv">$appvm</span> <span class="s2">&quot;cat &gt; </span><span class="nv">$APPVM_SHOTS_DIR</span><span class="s2">/</span><span class="nv">$vidname</span><span class="s2">&quot;</span>
<span class="k">else</span>
	<span class="nb">echo</span> <span class="s2">&quot;no AppVM name provided&quot;</span>
<span class="k">fi</span>

<span class="nb">echo</span> <span class="s2">&quot;[*] done&quot;</span>
</pre></div>
</code></pre></td></tr></table>
</div> <!-- class=content -->
<div class='footer'>Copyright &copy; 1996 &ndash; 2020 Jason A. Donenfeld. All Rights Reverse Engineered.</div>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-135234-5']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</div> <!-- id=cgit -->
</body>
</html>
