s|\(\x1B\[31m\)\(.*\)|\1%{color:red} \2%|g
s|\(\x1B\[32m\)\(.*\)|\1%{color:green} \2%|g
/\@\@/a <pre><notextile></notextile>
/@@/i </pre>
$a </pre>
