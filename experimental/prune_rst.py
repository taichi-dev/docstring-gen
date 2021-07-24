import os


def process_rst(rst_path):
    lines = []
    with open(rst_path, 'r') as rf:
        for l in rf:
            if ':undoc-members:' not in l:
                lines.append(l)
    with open(rst_path, 'w') as wf:
        wf.writelines(lines)
    print(f'Processed {rst_path}')


def main():
    script_dir = os.path.dirname(os.path.realpath(__file__))
    rst_dir = os.path.join(script_dir, 'src')
    for dirpath, _, fnames in os.walk(rst_dir):
        for fname in fnames:
            ext = os.path.splitext(fname)[1]
            if ext.endswith('rst'):
                process_rst(os.path.join(dirpath, fname))


if __name__ == '__main__':
    main()
