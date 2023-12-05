import ChartBar from "./ChartBar";
import "./Chart.css";

function Chart({ dataPoints }) {
  const dataPointValues = dataPoints.map((dataPoint) => dataPoint.value);
  const totalMax = Math.max(...dataPointValues);

  console.log(dataPoints);

  return (
    <div className="chart">
      {dataPoints.map((dataPoint) => (
        <ChartBar
          key={dataPoint.label}
          value={dataPoint.value}
          maxValue={totalMax}
          label={dataPoint.label}
        />
      ))}
    </div>
  );
}

export default Chart;
