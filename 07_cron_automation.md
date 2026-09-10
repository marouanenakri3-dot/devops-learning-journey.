# ⏰ Day 7: Task Automation with Cron Jobs

## Key Concepts Learned:
- **Cron Service**: Managing background scheduled services in Linux (`sudo service cron status/start`).
- **Crontab Syntax**: Understanding the 5-asterisk schedule format (`minute hour day month day-of-week`).
- **Automated Logging**: Outputting continuous health check metrics directly to a log file.

## Script Created:
- `07_cron_monitor.sh`: Logs memory usage timestamped every minute.

## Crontab Configuration Used:
```bash
* * * * * /bin/bash /home/marouane/devops-learning-journey/07_cron_monitor.shQ
