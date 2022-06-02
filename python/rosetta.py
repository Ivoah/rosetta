print('Writing ../python.ppm')

file = open('../python.ppm', 'w')
file.write('P3\n256 256\n255\n')

for r in range(256):
    for g in range(256):
        file.write(f'{r} {g} 0 ')
    file.write('\n')

file.close()
