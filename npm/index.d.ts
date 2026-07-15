declare module '@apiverve/hmac' {
  export interface hmacOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface hmacResponse {
    status: string;
    error: string | null;
    data: HMACGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HMACGeneratorData {
      hmac:      null | string;
      algorithm: null | string;
      encoding:  null | string;
  }

  export default class hmacWrapper {
    constructor(options: hmacOptions);

    execute(callback: (error: any, data: hmacResponse | null) => void): Promise<hmacResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hmacResponse | null) => void): Promise<hmacResponse>;
    execute(query?: Record<string, any>): Promise<hmacResponse>;
  }
}
