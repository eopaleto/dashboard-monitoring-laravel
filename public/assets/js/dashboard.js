let chartKetinggian, chartPieKetinggian, chartKecepatan, chartPieKecepatan;

document.addEventListener("DOMContentLoaded", function () {
    initChartKetinggian();
    initChartKecepatan();
});

function initChartKetinggian(filter = '15') {
    fetch(`/api/chart-data?ketinggian=${filter}`)
        .then(res => res.json())
        .then(data => {
            const ctx = document.getElementById("chart-ketinggian").getContext("2d");
            const pieCtx = document.getElementById("chartpie-ketinggian").getContext("2d");

            if (chartPieKetinggian) chartPieKetinggian.destroy();
            if (chartKetinggian) chartKetinggian.destroy();

            const gradient = ctx.createLinearGradient(0, 230, 0, 50);
            gradient.addColorStop(1, 'rgba(203,12,159,0.2)');
            gradient.addColorStop(0.2, 'rgba(72,72,176,0.0)');
            gradient.addColorStop(0, 'rgba(203,12,159,0)');

            chartKetinggian = new Chart(ctx, {
                type: "line",
                data: {
                    labels: data.ketinggian.labels,
                    datasets: [{
                        data: data.ketinggian.values,
                        tension: 0.4,
                        borderWidth: 3,
                        borderColor: "#cb0c9f",
                        backgroundColor: gradient,
                        fill: true,
                        pointRadius: 0,
                        tooltipData: data.ketinggian.tooltip

                    }]
                },
                options: chartOptions()
            });
            chartPieKetinggian = new Chart(pieCtx, {
                type: "doughnut",
                data: {
                    labels: Object.keys(data.ketinggian.pie),
                    datasets: [{
                        data: Object.values(data.ketinggian.pie),
                        backgroundColor: ['#cb0c9f', '#e55ec6', '#f79ae0', '#fad0ec'],
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        datalabels: {
                            formatter: (value, ctx) => {
                                let sum = ctx.chart.data.datasets[0].data.reduce((a, b) => a + b, 0);
                                let percentage = (value * 100 / sum).toFixed(1) + "%";
                                return percentage;
                            },
                            color: '#fff',
                            font: {
                                weight: 'bold',
                                size: 12,
                                family: "Open Sans"
                            }
                        },
                        legend: {
                            position: 'bottom',
                            labels: {
                                font: {
                                    family: 'Open Sans'
                                }
                            }
                        }
                    }
                },
                plugins: [ChartDataLabels]
            });
        });
}

function initChartKecepatan(filter = '15') {
    fetch(`/api/chart-data?kecepatan=${filter}`)
        .then(res => res.json())
        .then(data => {
            const ctx = document.getElementById("chart-kecepatan").getContext("2d");
            const pieCtx = document.getElementById("chartpie-kecepatan")

            if (chartPieKecepatan) chartPieKecepatan.destroy();
            if (chartKecepatan) chartKecepatan.destroy();

            const gradient = ctx.createLinearGradient(0, 230, 0, 50);
            gradient.addColorStop(1, 'rgba(255, 206, 86, 0.4)');
            gradient.addColorStop(0.2, 'rgba(255, 206, 86, 0.05)');
            gradient.addColorStop(0, 'rgba(255, 206, 86, 0)');

            chartKecepatan = new Chart(ctx, {
                type: "line",
                data: {
                    labels: data.kecepatan.labels,
                    datasets: [{
                        data: data.kecepatan.values,
                        tension: 0.4,
                        borderWidth: 3,
                        borderColor: "#f9a825",
                        backgroundColor: gradient,
                        fill: true,
                        pointRadius: 0,
                        tooltipData: data.kecepatan.tooltip
                    }]
                },
                options: chartOptions()
            });
            chartPieKecepatan = new Chart(pieCtx, {
                type: "doughnut",
                data: {
                    labels: Object.keys(data.kecepatan.pie),
                    datasets: [{
                        data: Object.values(data.kecepatan.pie),
                        backgroundColor: ['#f9a825', '#fdd835', '#fff176'],
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        datalabels: {
                            formatter: (value, ctx) => {
                                let sum = ctx.chart.data.datasets[0].data.reduce((a, b) => a + b, 0);
                                let percentage = (value * 100 / sum).toFixed(1) + "%";
                                return percentage;
                            },
                            color: '#fff',
                            font: {
                                weight: 'bold',
                                size: 12,
                                family: "Open Sans"
                            }
                        },
                        legend: {
                            position: 'bottom',
                            labels: {
                                font: {
                                    family: 'Open Sans'
                                }
                            }
                        }
                    }
                },
                plugins: [ChartDataLabels]
            });
        });
}

function filterKetinggian(waktu) {
    initChartKetinggian(waktu);
}

function filterKecepatan(waktu) {
    initChartKecepatan(waktu);
}

function chartOptions() {
    return {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: { display: false },
            tooltip: {
                callbacks: {
                    label: function(context) {
                        const dataset = context.dataset;
                        return dataset.tooltipData[context.dataIndex];
                    }
                }
            }
        },
        interaction: {
            intersect: false,
            mode: 'index'
        },
        scales: {
            y: {
                grid: {
                    drawBorder: false,
                    drawOnChartArea: true,
                    drawTicks: false,
                    borderDash: [5, 5]
                },
                ticks: {
                    display: true,
                    padding: 10,
                    color: '#b2b9bf',
                    font: {
                        size: 11,
                        family: "Open Sans",
                        style: 'normal',
                        lineHeight: 2
                    }
                }
            },
            x: {
                grid: {
                    drawBorder: false,
                    display: false,
                    drawTicks: false
                },
                ticks: {
                    display: true,
                    color: '#b2b9bf',
                    maxTicksLimit: 12 ,
                    padding: 20,
                    font: {
                        size: 11,
                        family: "Open Sans",
                        style: 'normal',
                        lineHeight: 2
                    }
                }
            }
        }
    };
}
