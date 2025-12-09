declare module '@apiverve/hmac' {
  export interface hmacOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface hmacResponse {
    status: string;
    error: string | null;
    data: HMACGeneratorData;
    code?: number;
  }


  interface HMACGeneratorData {
      hmac:      string;
      algorithm: string;
      encoding:  string;
  }

  export default class hmacWrapper {
    constructor(options: hmacOptions);

    execute(callback: (error: any, data: hmacResponse | null) => void): Promise<hmacResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hmacResponse | null) => void): Promise<hmacResponse>;
    execute(query?: Record<string, any>): Promise<hmacResponse>;
  }
}
