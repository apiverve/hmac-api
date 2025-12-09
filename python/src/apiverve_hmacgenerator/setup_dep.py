from setuptools import setup, find_packages

setup(
    name='apiverve_hmacgenerator',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='HMAC Generator creates Hash-based Message Authentication Codes for data integrity and authentication. Supports SHA-256, SHA-384, SHA-512, SHA-1, and MD5 algorithms.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
