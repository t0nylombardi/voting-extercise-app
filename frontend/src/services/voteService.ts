import { apiFetch } from "./api";

export interface VoteResponse {
  message: string;
  candidate: {
    name: string;
    votes: number;
  };
}

export async function castVote(candidateName: string) {
  return apiFetch<VoteResponse>("/vote", {
    method: "POST",
    body: { candidate_name: candidateName },
  });
}
