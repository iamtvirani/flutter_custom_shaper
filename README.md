  <h1>Flutter Custom Shape Package</h1>
    <p>
        <code>flutter_custom_shaper</code> is a Flutter package that provides utilities to create and work with custom-shaped widgets. It includes predefined shapes, clipper classes, and painters to help you easily create unique UI components.
    </p>
    <h2>Features</h2>
    <ul>
        <li>Predefined custom shapes like bubbles, unique, and basic shapes.</li>
        <li>Easy-to-use <code>CustomShaper</code> widget for creating shapes.</li>
        <li>Built-in clipper classes for customize created clipper provided</li>
    </ul>
    <h2>Installation</h2>
    <p>Add the following line to your <code>pubspec.yaml</code>:</p>
    <pre>
<code>
dependencies:
  flutter_custom_shaper: ^0.0.1
</code>
    </pre>
    <p>Then, run:</p>
    <pre>
<code>flutter pub get</code>
    </pre>
    <h2>Usage</h2>
    <p>Here’s a quick example of how to use the <code>custom_shape</code> package in your Flutter app:</p>
    <h3>CustomShaper Widget</h3>
    <p>Use the <code>CustomShaper</code> widget to create custom shapes. It accepts parameters like:</p>
    <ul>
        <li><code>clipper</code>: A custom clipper class to define the shape.</li>
        <li><code>color</code>: The background color of the shape.</li>
        <li><code>width</code> and <code>height</code>: Dimensions of the shape.</li>
    </ul>
    <h4>Example:</h4>
    <pre>
<code>
CustomShaper(
            height: 80,
            width: 80,
            clipper: BubbleClipper(),
            child: CustomPaint(
              painter: BubblePainter(),
            ),
          )
</code>
    </pre>
    <h2>Dependencies</h2>
    <p>This package depends on the following:</p>
    <ul>
        <li>Flutter SDK</li>
        <li>Dart SDK</li>
    </ul>
    <h2>Contributing</h2>
    <p>Contributions are welcome! If you’d like to add new shapes or improve the package, feel free to open a pull request.</p>
    <h2>License</h2>
    <p>This package is licensed under the MIT License. See the <code>LICENSE</code> file for more details.</p>
    <hr>
    <p>Enjoy building creative and unique UI components with <code>custom_shape</code>!</p>
    <h2>Issues</h2>
<p>For any issues or feature requests, please visit the <a href="https://github.com/iamtvirani/custom_shape/issues">GitHub Issues page</a>.</p>
<p>If this package help you then give star and support me ♥️ :)</p>
<p> Help coding 🫰🏻</p>
