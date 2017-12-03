#!/usr/bin/python
with open('/tmp/smalltb.txt', 'w') as f:
	for i in xrange(10000000):
		f.write(str(i) + ',' + 'xxxxxxxxx' + '\n')

with open('/tmp/bigtb.txt', 'w') as f:
	for j in xrange(5):
		for i in xrange(10000000):
			f.write(str(i) + ',' + 'xxxxxxxxx' + '\n')
