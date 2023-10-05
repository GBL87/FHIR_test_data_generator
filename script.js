const fs = require('fs');
const path = require('path');
const csv = require('csv-parser');

// Path to the template file
const CarePlanTemplateFilePath = './assets/CarePlan_template.fsh';
const CareTeamTemplateFilePath = './assets/CareTeam_template.fsh';
const CareGoalTemplateFilePath = './assets/CareGoal_template.fsh';
const CommunicationTemplateFilePath = './assets/Communication_template.fsh';
const TaskTemplateFilePath = './assets/Task_template.fsh';

// Path to the CarePlan CSV file
const CarePlan_csvFilePath = './assets/CarePlan_data.csv';
const CareTeam_csvFilePath = './assets/CareTeam_data.csv';
const CareGoal_csvFilePath = './assets/CareGoal_data.csv';
const Communication_csvFilePath = './assets/Communication_data.csv';
const Task_csvFilePath = './assets/Task_data.csv';

// Output directory for generated FSH files
const outputDirectory = 'generated_fsh_files/';

// If directory does not exist, create the directory
if (!fs.existsSync(outputDirectory)) {
  fs.mkdirSync(outputDirectory);
  console.log(`Output directory created: ${outputDirectory}`);
}

// If directory is not empty -> Delete all files
fs.readdir(outputDirectory, (err, files) => {
  if (err) {
    console.error('Error reading directory:', err);
    return;
  }

  if (files.length === 0) {
    console.log('Directory is empty. No files to delete.');
    return;
  }

  files.forEach(file => {
    const filePath = path.join(outputDirectory, file);

    fs.unlink(filePath, err => {
      if (err) {
        console.error('Error deleting file:', err);
      } else {
        console.log('Deleted file:', filePath);
      }
    });
  });
});

// Read the CarePlan template file
fs.readFile(CarePlanTemplateFilePath, 'utf8', (err, templateData) => {
  if (err) {
    console.error(`Error reading template file: ${err}`);
    return;
  }

  // Read the CarePlan CSV file
  fs.createReadStream(CarePlan_csvFilePath)
    .pipe(csv({ separator: ';' }))
    .on('data', (data) => {
      // Generate an FSH file for each row in the CSV file
      const fileName = `${outputDirectory}${data['FileName']}.fsh`; // Assuming 'FileName' is a column name in the CSV file
      const fshContent = replaceValues(templateData, data);
      fs.writeFile(fileName, fshContent, (err) => {
        if (err) {
          console.error(`Error writing FSH file: ${err}`);
        } else {
          console.log(`Generated FSH file: ${fileName}`);
        }
      });
    })
    .on('end', () => {
      console.log('All FSH files generated successfully.');
    });
    
});

// Read the CareTeam template file
fs.readFile(CareTeamTemplateFilePath, 'utf8', (err, templateData) => {
  if (err) {
    console.error(`Error reading template file: ${err}`);
    return;
  }

  // Read the CarePlan CSV file
  fs.createReadStream(CareTeam_csvFilePath)
    .pipe(csv({ separator: ';' }))
    .on('data', (data) => {
      // Generate an FSH file for each row in the CSV file
      const fileName = `${outputDirectory}${data['FileName']}.fsh`; // Assuming 'FileName' is a column name in the CSV file
      const fshContent = replaceValues(templateData, data);
      fs.writeFile(fileName, fshContent, (err) => {
        if (err) {
          console.error(`Error writing FSH file: ${err}`);
        } else {
          console.log(`Generated FSH file: ${fileName}`);
        }
      });
    })
    .on('end', () => {
      console.log('All FSH files generated successfully.');
    });
    
});

// Read the CareGoal template file
fs.readFile(CareGoalTemplateFilePath, 'utf8', (err, templateData) => {
  if (err) {
    console.error(`Error reading template file: ${err}`);
    return;
  }

  // Read the CareGoal CSV file
  fs.createReadStream(CareGoal_csvFilePath)
    .pipe(csv({ separator: ';' }))
    .on('data', (data) => {
      // Generate an FSH file for each row in the CSV file
      const fileName = `${outputDirectory}${data['FileName']}.fsh`; // Assuming 'FileName' is a column name in the CSV file
      const fshContent = replaceValues(templateData, data);
      fs.writeFile(fileName, fshContent, (err) => {
        if (err) {
          console.error(`Error writing FSH file: ${err}`);
        } else {
          console.log(`Generated FSH file: ${fileName}`);
        }
      });
    })
    .on('end', () => {
      console.log('All FSH files generated successfully.');
    });
    
});

// Read the Communication template file
fs.readFile(CommunicationTemplateFilePath, 'utf8', (err, templateData) => {
  if (err) {
    console.error(`Error reading template file: ${err}`);
    return;
  }

  // Read the Communication CSV file
  fs.createReadStream(Communication_csvFilePath)
    .pipe(csv({ separator: ';' }))
    .on('data', (data) => {
      // Generate an FSH file for each row in the CSV file
      const fileName = `${outputDirectory}${data['FileName']}.fsh`; // Assuming 'FileName' is a column name in the CSV file
      const fshContent = replaceValues(templateData, data);
      fs.writeFile(fileName, fshContent, (err) => {
        if (err) {
          console.error(`Error writing FSH file: ${err}`);
        } else {
          console.log(`Generated FSH file: ${fileName}`);
        }
      });
    })
    .on('end', () => {
      console.log('All FSH files generated successfully.');
    });
    
});

// Read the Task template file
fs.readFile(TaskTemplateFilePath, 'utf8', (err, templateData) => {
  if (err) {
    console.error(`Error reading template file: ${err}`);
    return;
  }

  // Read the Communication CSV file
  fs.createReadStream(Task_csvFilePath)
    .pipe(csv({ separator: ';' }))
    .on('data', (data) => {
      // Generate an FSH file for each row in the CSV file
      const fileName = `${outputDirectory}${data['FileName']}.fsh`; // Assuming 'FileName' is a column name in the CSV file
      const fshContent = replaceValues(templateData, data);
      fs.writeFile(fileName, fshContent, (err) => {
        if (err) {
          console.error(`Error writing FSH file: ${err}`);
        } else {
          console.log(`Generated FSH file: ${fileName}`);
        }
      });
    })
    .on('end', () => {
      console.log('All FSH files generated successfully.');
    });
    
});

// Function to replace placeholder values in the template with data from the CSV row
function replaceValues(template, data) {
  let result = template;
  for (const key in data) {
    const placeholder = `{{${key}}}`;
    const value = data[key];
    result = result.replace(new RegExp(placeholder, 'g'), value);
  }
  return result;
}
