
export type Sport = "horse" | "boat";
export type PredictionSource = "ai" | "human";

export type Prediction = {
  id: string;
  sport: Sport;
  source: PredictionSource;
  raceDate: string;
  venue: string;
  raceNumber: number;
  betType: string;
  selection: string;
  odds: number;
  stake: number;
  modelVersion?: string;
  createdAt: string;
};

const STORAGE_KEY = "race-lab-predictions-v1";

export function getPredictions(): Prediction[] {
  if (typeof window === "undefined") return [];

  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    return raw ? JSON.parse(raw) as Prediction[] : [];
  } catch {
    return [];
  }
}

export function savePrediction(
  prediction: Omit<Prediction, "id" | "createdAt">
): Prediction {
  const saved: Prediction = {
    ...prediction,
    id: crypto.randomUUID(),
    createdAt: new Date().toISOString(),
  };

  const predictions = getPredictions();
  predictions.push(saved);

  localStorage.setItem(
    STORAGE_KEY,
    JSON.stringify(predictions)
  );

  return saved;
}

export function deletePrediction(id: string): void {
  const predictions = getPredictions().filter(
    (prediction) => prediction.id !== id
  );

  localStorage.setItem(
    STORAGE_KEY,
    JSON.stringify(predictions)
  );
}
