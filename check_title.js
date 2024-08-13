function checkTitle(title) {
  const allowedTypes = [
    'feat',
    'fix',
    'docs',
    'style',
    'refactor',
    'perf',
    'test',
    'build',
    'ci',
    'chore',
    'revert',
  ];
  const pattern = new RegExp(`^(${allowedTypes.join('|')}): #[0-9]+$`);

  if (!pattern.test(title)) {
    throw new Error(
      "Pull request title does not follow the required '<Conventional Commit type>: #<issue_number>' format"
    );
  }
}

// Example usage:
try {
  checkTitle('chore: #1'); // This should pass
} catch (error) {
  console.error(error.message);
}
