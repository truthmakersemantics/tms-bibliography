#!/usr/bin/env python

import json
import os
import matplotlib.pyplot as plt

dirname  = os.path.dirname(__file__)
yaml_file = os.path.join(dirname, '..', 'data', 'json', 'tms.json')

with open(yaml_file) as bib_file:
    
    bib = json.load(bib_file)

bib_length = len(bib)

pub_years = []
i = 0
while i < bib_length:

    entry = bib[i]

    if 'issued' in entry:

        if entry['issued']['date-parts']:
            year = entry['issued']['date-parts'][0][0]
           
            pub_years.append(year)

    i += 1

bins = 2 * len(list(set(pub_years)))

plt.xlabel('Years')
plt.ylabel('No. of Publications')
plt.xticks(range(1965,2025,5))
plt.yticks(range(0,35,5))
plt.hist(pub_years, bins=bins, rwidth=0.7)

save_path = os.path.join(dirname, '..', 'img', 'tms-frequency.png')

plt.savefig(save_path)

