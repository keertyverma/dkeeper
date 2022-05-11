import type { Principal } from '@dfinity/principal';
export interface note { 'title' : string, 'content' : string }
export interface _SERVICE {
  'createNote' : (arg_0: string, arg_1: string) => Promise<undefined>,
  'readNotes' : () => Promise<Array<note>>,
  'removeNote' : (arg_0: bigint) => Promise<undefined>,
}
