# Import file "scroll wrap"
sketch = Framer.Importer.load("imported/scroll wrap@1x", scale: 1)

scroll = ScrollComponent.wrap(sketch.myContent)

scroll.scrollHorizontal = false