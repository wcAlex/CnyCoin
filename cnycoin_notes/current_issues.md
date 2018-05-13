
>>>>  CheckProofOfStake failure.

2018-05-06 22:55:01 received block 9c533820c07c19f131e71ae528f7dee43d77a30a6bf2c377e110ea1b6b7f13d1
2018-05-06 22:55:01 ERROR: CheckProofOfStake() : tx index not found
2018-05-06 22:55:01 WARNING: ProcessBlock(): check proof-of-stake failed for block 9c533820c07c19f131e71ae528f7dee43d77a30a6bf2c377e110ea1b6b7f13d1
2018-05-06 22:55:01 getblocks 5501 to 0000000000000000000000000000000000000000000000000000000000000000 limit 500

main.cpp: ProcessBlock()
    if (pblock->IsProofOfStake())
     if (!CheckProofOfStake(state, pblock->vtx[1], pblock->nBits, hashProofOfStake))

kernel.cpp: CheckProofOfStake()


>>>> Too many blocks
2018-05-07 03:07:30   getblocks stopping at limit 500 0000e2616518572afe7e61e1449ec063dcc8d84b2d62a328acb079d33e3febc3
2018-05-07 03:07:30 getblocks 2001 to 0000000000000000000000000000000000000000000000000000000000000000 limit 500

main.cpp: ProcessMessage()
    line 4049: pfrom->PushInventory(CInv(MSG_BLOCK, pindex->GetBlockHash()));
            if (--nLimit <= 0)
            {
                // When this block is requested, we'll send an inv that'll make them
                // getblocks the next batch of inventory.
                printf("  getblocks stopping at limit %d %s\n", pindex->nHeight, pindex->GetBlockHash().ToString().c_str());
                pfrom->hashContinue = pindex->GetBlockHash();
                break;
            } 