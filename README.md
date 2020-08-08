# HHS.org

This is the public-facing site for HHS. It gives visitors a brief overview of what HHS and points them to ways to help.

## Running the site

From the project directory, run:

`python -m SimpleHTTPServer`

You may need to install python.

## Building the site

From the project directory, run:

`bash scripts/build.sh`

You may need to install npm, less or mustache.

## Editing the build

You can add new pages and such in the **build.sh** file. Just copy the patterns that are there.

## The CSS output

The **build.sh** file will add all of the CSS to the page in a style tag. We may change this later as we add more pages, to refer to a central resource.

## Mustache templates

Each page of the site has a corresponding mustache template. The sub-templates, or partials, or fragments, are in the */templates* directory. Yaml scripts with site/page information are in the */yaml* directory.

## Adding JS

The site has no JS right now. If you add js, do it in the */js* directory, not the */scripts* directory. That directory is for the site-building bash scripts, not the code that runs on the site.

## Adding to the static site generation

Be careful of making this too complex. The reason to keep it simple is to keep it out of the way of any eventual on-page HHS demos. We want to make sure the site frame itself isn't competing with the demo, either in a technical complexity sense or in a page weight sense.

## Adding assets

For Less files, use */less*. For images, use */img/. The */css* directory is only intended for compilation outputs. This folder tends to be redundant because it's not referenced on the site, only in the build process.

## PostCSS/cssnano

The site *may* be configured to crunch CSS using these. The setup can be a little complicated. Try following their latest install process locally if you run into any error messages mentioning these two. (Or just disable this and use the normal uncrunched CSS output)