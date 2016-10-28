# Prolog become king
A prolog example to determine who needs to die before somebody can become king.

## Use
Use the [online prolog intepreter] (http://swish.swi-prolog.org/) for your queries.
Just copy the content of the [becomeKing Prolog script](becomeKing.prolog) into the editor.

To find out how Robbert becomes king use this query:
~~~prolog
becomeKing(robbert,X)

~~~~


## Kings family overview

For easier understanding on how the people in this example are related, please see the family tee below. (Or directly in the [Overview.txt](Overview.txt))


~~~~

                                                    XX             X           X+
                                                    +XXXX        XXXXX       XXX|
                                                    |   XX     XXX   XXX    XXX |
                                                    |    XXX XXX       XX XXX   |
                                                    |      XXX          XXX     |
                                                    |                           |
                                                    |      King Martin (m)      |
                                                    |                           |
                                                    +--------------+------------+
                                                                   |
                             +---------------------------------------------------------------------------+
                             |                                     |                                     |
                             |                                     |                                     |
                +------------+------------+         +--------------+-------------+         +-------------+-------------+
                |                         |         |                            |         |                           |
                |         John (m)        |         |          Fiona (f)         |         |          Robbert (m)      |
                |                         |         |                            |         |                           |
                +------------+------------+         +--------------+-------------+         +-------------+-------------+
                             |                                     |                                     |
      +------------------+---+--------------+               +------+-----------+                         |
      |                  |                  |               |                  |                         |
+-----+-----+     +------+-------+    +-----+-----+   +-----+-----+      +-----+-----+             +-----+------+
|           |     |              |    |           |   |           |      |           |             |            |
|  Mary (f) |     |  Jeffrey (m) |    |  Tim (m)  |   |  Nick (m) |      |   Ana (f) |             |  Tom (m)   |
|           |     |              |    |           |   |           |      |           |             |            |
+-----------+     +--------------+    +-----------+   +-----------+      +-----+-----+             +------------+
                                                                               |
                                                                               |
                                                                         +-----+-----+
                                                                         |           |
                                                                         | Peter (m) |
                                                                         |           |
                                                                         +-----------+


~~~
The tree was created with [asciiflow](http://asciiflow.com).

## Rules to become king
The basis on how to become king were taken from [here](http://www.cgpgrey.com/blog/how-to-become-the-british-monarch).




