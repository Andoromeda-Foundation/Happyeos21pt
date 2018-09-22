(module
 (type $FUNCSIG$vijji (func (param i32 i64 i64 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ijjj (func (param i64 i64 i64) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (import "env" "__multi3" (func $__multi3 (param i32 i64 i64 i64 i64)))
 (import "env" "__udivti3" (func $__udivti3 (param i32 i64 i64 i64 i64)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_end_i64" (func $db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx_double_find_primary" (func $db_idx_double_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx_double_remove" (func $db_idx_double_remove (param i32)))
 (import "env" "db_idx_double_store" (func $db_idx_double_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx_double_update" (func $db_idx_double_update (param i32 i64 i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_previous_i64" (func $db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $memmove (param i32 i32 i32) (result i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (table 4 4 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN12eosotcbackup8retrieveEyyN5eosio14extended_assetE $_ZN12eosotcbackup4initEv $_ZN12eosotcbackup4testEv)
 (memory $0 1)
 (data (i32.const 4) "\80f\00\00")
 (data (i32.const 16) "\"eosotcbackup\"\00")
 (data (i32.const 32) "fake\00")
 (data (i32.const 48) "next primary key in table is at autoincrement limit\00")
 (data (i32.const 112) "cannot create objects in table of another contract\00")
 (data (i32.const 176) "active\00")
 (data (i32.const 192) "receipt\00")
 (data (i32.const 208) "write\00")
 (data (i32.const 224) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 288) "invalid symbol name\00")
 (data (i32.const 320) "cannot decrement end iterator when the table is empty\00")
 (data (i32.const 384) "cannot decrement iterator at beginning of table\00")
 (data (i32.const 432) "error reading iterator\00")
 (data (i32.const 464) "read\00")
 (data (i32.const 480) "fake currency\00")
 (data (i32.const 496) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 560) "order is not exist.\00")
 (data (i32.const 592) "price is too high\00")
 (data (i32.const 624) "transfer\00")
 (data (i32.const 640) "trade success\00")
 (data (i32.const 656) "cannot pass end iterator to erase\00")
 (data (i32.const 704) "cannot increment end iterator\00")
 (data (i32.const 736) "cannot pass end iterator to modify\00")
 (data (i32.const 784) "object passed to modify is not in multi_index\00")
 (data (i32.const 832) "cannot modify objects in table of another contract\00")
 (data (i32.const 896) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 960) "object passed to erase is not in multi_index\00")
 (data (i32.const 1008) "cannot erase objects in table of another contract\00")
 (data (i32.const 1072) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 1136) "not the owner.\00")
 (data (i32.const 1152) "order retrieve\00")
 (data (i32.const 1168) "invalid token transfer\00")
 (data (i32.const 1200) "must bid a positive amount\00")
 (data (i32.const 1232) "ask\00")
 (data (i32.const 1248) "invalid token in ask\00")
 (data (i32.const 1280) "must ask a positive amount\00")
 (data (i32.const 1312) "invalid token in bid\00")
 (data (i32.const 1344) "take\00")
 (data (i32.const 1360) "get\00")
 (data (i32.const 9760) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_ZN12eosotcbackup4initEv" (func $_ZN12eosotcbackup4initEv))
 (export "_ZN12eosotcbackup4testEv" (func $_ZN12eosotcbackup4testEv))
 (export "_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE" (func $_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE))
 (export "_ZN12eosotcbackup3askEyN5eosio14extended_assetES1_" (func $_ZN12eosotcbackup3askEyN5eosio14extended_assetES1_))
 (export "_ZN12eosotcbackup7receiptERKNS_3recE" (func $_ZN12eosotcbackup7receiptERKNS_3recE))
 (export "_ZN12eosotcbackup4takeEyyN5eosio14extended_assetES1_" (func $_ZN12eosotcbackup4takeEyyN5eosio14extended_assetES1_))
 (export "_ZN12eosotcbackup8retrieveEyyN5eosio14extended_assetE" (func $_ZN12eosotcbackup8retrieveEyyN5eosio14extended_assetE))
 (export "_ZN12eosotcbackup8transferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE" (func $_ZN12eosotcbackup8transferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE))
 (export "_ZN12eosotcbackup10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE" (func $_ZN12eosotcbackup10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "memchr" (func $memchr))
 (export "memcmp" (func $memcmp))
 (export "strlen" (func $strlen))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $_ZN12eosotcbackup4initEv (type $FUNCSIG$vi) (param $0 i32)
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_ZN12eosotcbackup4testEv (type $FUNCSIG$vi) (param $0 i32)
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.and
        (tee_local $3
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (br_if $label$1
       (i32.eqz
        (tee_local $3
         (i32.shr_u
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $4
       (i64.const 0)
      )
      (loop $label$4
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_u
              (get_local $0)
             )
            )
            (i32.const -48)
           )
           (i32.const 255)
          )
          (i32.const 9)
         )
        )
        (set_local $4
         (i64.add
          (i64.add
           (i64.mul
            (get_local $4)
            (i64.const 10)
           )
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $2)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
          (i64.const -48)
         )
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $label$4
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
       (br $label$2)
      )
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (set_local $2
      (i32.load
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $4
      (i64.const 0)
     )
     (set_local $0
      (i32.const 0)
     )
     (loop $label$6
      (block $label$7
       (br_if $label$7
        (i32.lt_s
         (i32.load8_s
          (i32.add
           (get_local $2)
           (get_local $0)
          )
         )
         (i32.const 48)
        )
       )
       (br_if $label$7
        (i32.gt_s
         (i32.load8_s
          (i32.add
           (i32.load
            (get_local $1)
           )
           (get_local $0)
          )
         )
         (i32.const 57)
        )
       )
       (set_local $4
        (i64.add
         (i64.add
          (i64.mul
           (get_local $4)
           (i64.const 10)
          )
          (i64.load8_s
           (i32.add
            (i32.load
             (get_local $1)
            )
            (get_local $0)
           )
          )
         )
         (i64.const -48)
        )
       )
      )
      (br_if $label$6
       (i32.lt_u
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $4)
    )
   )
   (return
    (i64.const 0)
   )
  )
  (i64.const 0)
 )
 (func $_ZN12eosotcbackup3askEyN5eosio14extended_assetES1_ (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (set_local $12
   (i64.load offset=16
    (get_local $2)
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $7
   (i32.const 16)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$0
   (set_local $11
    (i64.const 0)
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i64.gt_u
       (get_local $8)
       (i64.const 13)
      )
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $4
            (i32.load8_s
             (get_local $7)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 165)
        )
       )
       (br $label$3)
      )
      (set_local $4
       (select
        (i32.add
         (get_local $4)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $11
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $4)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
     (br_if $label$2
      (i64.gt_u
       (get_local $8)
       (i64.const 11)
      )
     )
     (set_local $11
      (i64.shl
       (i64.and
        (get_local $11)
        (i64.const 31)
       )
       (i64.and
        (get_local $10)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$1)
    )
    (set_local $11
     (i64.and
      (get_local $11)
      (i64.const 15)
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $11)
     (get_local $9)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $12)
    (get_local $9)
   )
   (i32.const 32)
  )
  (set_local $12
   (i64.load offset=16
    (get_local $3)
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $7
   (i32.const 16)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$5
   (set_local $11
    (i64.const 0)
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i64.gt_u
       (get_local $8)
       (i64.const 13)
      )
     )
     (block $label$8
      (block $label$9
       (br_if $label$9
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $4
            (i32.load8_s
             (get_local $7)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 165)
        )
       )
       (br $label$8)
      )
      (set_local $4
       (select
        (i32.add
         (get_local $4)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $11
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $4)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
     (br_if $label$7
      (i64.gt_u
       (get_local $8)
       (i64.const 11)
      )
     )
     (set_local $11
      (i64.shl
       (i64.and
        (get_local $11)
        (i64.const 31)
       )
       (i64.and
        (get_local $10)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$6)
    )
    (set_local $11
     (i64.and
      (get_local $11)
      (i64.const 15)
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $11)
     (get_local $9)
    )
   )
   (br_if $label$5
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $12)
    (get_local $9)
   )
   (i32.const 32)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 120)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $13)
   (get_local $12)
  )
  (i64.store offset=136
   (get_local $13)
   (i64.const -1)
  )
  (set_local $8
   (i64.const 0)
  )
  (i64.store offset=144
   (get_local $13)
   (i64.const 0)
  )
  (i64.store offset=120
   (get_local $13)
   (tee_local $11
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=156
   (get_local $13)
   (i32.const 0)
  )
  (block $label$10
   (br_if $label$10
    (i32.lt_s
     (tee_local $7
      (call $db_lowerbound_i64
       (get_local $11)
       (get_local $12)
       (i64.const -6497942746098040832)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
     (i32.add
      (get_local $13)
      (i32.const 120)
     )
     (get_local $7)
    )
   )
   (i32.store offset=52
    (get_local $13)
    (i32.const 0)
   )
   (i32.store offset=48
    (get_local $13)
    (i32.add
     (get_local $13)
     (i32.const 120)
    )
   )
   (set_local $8
    (select
     (i64.const -2)
     (i64.add
      (tee_local $8
       (i64.load
        (i32.load offset=4
         (call $_ZN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE14const_iteratormmEv
          (i32.add
           (get_local $13)
           (i32.const 48)
          )
         )
        )
       )
      )
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $8)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 120)
     )
     (i32.const 16)
    )
   )
   (get_local $8)
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $8)
    (i64.const -2)
   )
   (i32.const 48)
  )
  (set_local $8
   (i64.load
    (get_local $4)
   )
  )
  (set_local $10
   (call $current_time)
  )
  (set_local $11
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=120
     (get_local $13)
    )
    (call $current_receiver)
   )
   (i32.const 112)
  )
  (set_local $6
   (call $_ZN12eosotcbackup5orderC2Ev
    (tee_local $7
     (call $_Znwj
      (i32.const 80)
     )
    )
   )
  )
  (i32.store offset=68
   (get_local $7)
   (i32.add
    (get_local $13)
    (i32.const 120)
   )
  )
  (i64.store offset=8
   (get_local $7)
   (get_local $1)
  )
  (i64.store
   (get_local $7)
   (get_local $8)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 36)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 4)
    )
   )
  )
  (i32.store offset=16
   (get_local $7)
   (i32.load
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (get_local $7)
    (i32.const 56)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (i64.load
    (get_local $3)
   )
  )
  (i32.store offset=64
   (get_local $7)
   (tee_local $5
    (i32.wrap/i64
     (i64.div_u
      (get_local $10)
      (i64.const 1000000)
     )
    )
   )
  )
  (i32.store offset=16
   (get_local $13)
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.const 68)
   )
  )
  (i32.store offset=12
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 48)
   )
  )
  (i32.store offset=8
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 48)
   )
  )
  (drop
   (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN12eosotcbackup5orderE
    (i32.add
     (get_local $13)
     (i32.const 8)
    )
    (get_local $6)
   )
  )
  (i32.store offset=72
   (get_local $7)
   (call $db_store_i64
    (i64.load
     (tee_local $6
      (i32.add
       (i32.add
        (get_local $13)
        (i32.const 120)
       )
       (i32.const 8)
      )
     )
    )
    (i64.const -6497942746098040832)
    (get_local $11)
    (tee_local $10
     (i64.load
      (get_local $7)
     )
    )
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.const 68)
   )
  )
  (block $label$11
   (br_if $label$11
    (i64.lt_u
     (get_local $10)
     (i64.load
      (get_local $4)
     )
    )
   )
   (i64.store
    (get_local $4)
    (select
     (i64.const -2)
     (i64.add
      (get_local $10)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $10)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (get_local $7)
   )
  )
  (set_local $9
   (i64.load
    (get_local $6)
   )
  )
  (f64.store offset=184
   (get_local $13)
   (f64.div
    (f64.convert_s/i64
     (i64.load
      (i32.add
       (get_local $7)
       (i32.const 40)
      )
     )
    )
    (f64.convert_s/i64
     (i64.load
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
     )
    )
   )
  )
  (i32.store offset=76
   (get_local $7)
   (call $db_idx_double_store
    (get_local $9)
    (i64.const -6497942746098040832)
    (get_local $11)
    (get_local $10)
    (i32.add
     (get_local $13)
     (i32.const 184)
    )
   )
  )
  (i32.store offset=8
   (get_local $13)
   (get_local $7)
  )
  (i64.store offset=48
   (get_local $13)
   (tee_local $11
    (i64.load
     (get_local $7)
    )
   )
  )
  (i32.store offset=184
   (get_local $13)
   (tee_local $6
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 72)
     )
    )
   )
  )
  (block $label$12
   (block $label$13
    (br_if $label$13
     (i32.ge_u
      (tee_local $4
       (i32.load
        (i32.add
         (i32.add
          (get_local $13)
          (i32.const 120)
         )
         (i32.const 28)
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $13)
        (i32.const 152)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $4)
     (get_local $11)
    )
    (i32.store offset=16
     (get_local $4)
     (get_local $6)
    )
    (i32.store offset=8
     (get_local $13)
     (i32.const 0)
    )
    (i32.store
     (get_local $4)
     (get_local $7)
    )
    (i32.store
     (i32.add
      (get_local $13)
      (i32.const 148)
     )
     (i32.add
      (get_local $4)
      (i32.const 24)
     )
    )
    (br $label$12)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS1_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_9get_priceEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $13)
     (i32.const 144)
    )
    (i32.add
     (get_local $13)
     (i32.const 8)
    )
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.add
     (get_local $13)
     (i32.const 184)
    )
   )
  )
  (set_local $7
   (i32.load offset=8
    (get_local $13)
   )
  )
  (i32.store offset=8
   (get_local $13)
   (i32.const 0)
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 84)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 80)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 76)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 72)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $2)
     (i32.const 4)
    )
   )
  )
  (i64.store offset=56
   (get_local $13)
   (get_local $1)
  )
  (i64.store offset=48
   (get_local $13)
   (get_local $8)
  )
  (i32.store offset=64
   (get_local $13)
   (i32.load
    (get_local $2)
   )
  )
  (i64.store
   (i32.add
    (get_local $13)
    (i32.const 104)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $13)
    (i32.const 96)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=88
   (get_local $13)
   (i64.load
    (get_local $3)
   )
  )
  (i32.store offset=112
   (get_local $13)
   (get_local $5)
  )
  (set_local $2
   (i32.add
    (get_local $13)
    (i32.const 112)
   )
  )
  (set_local $3
   (i32.add
    (get_local $13)
    (i32.const 88)
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.const 16)
   )
  )
  (set_local $5
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
    (i32.const 8)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $7
   (i32.const 176)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$15
   (block $label$16
    (block $label$17
     (block $label$18
      (block $label$19
       (block $label$20
        (br_if $label$20
         (i64.gt_u
          (get_local $8)
          (i64.const 5)
         )
        )
        (br_if $label$19
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $4
             (i32.load8_s
              (get_local $7)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $4
         (i32.add
          (get_local $4)
          (i32.const 165)
         )
        )
        (br $label$18)
       )
       (set_local $11
        (i64.const 0)
       )
       (br_if $label$17
        (i64.le_u
         (get_local $8)
         (i64.const 11)
        )
       )
       (br $label$16)
      )
      (set_local $4
       (select
        (i32.add
         (get_local $4)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $11
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $4)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $11
     (i64.shl
      (i64.and
       (get_local $11)
       (i64.const 31)
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $11)
     (get_local $9)
    )
   )
   (br_if $label$15
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $7
   (i32.const 192)
  )
  (set_local $12
   (i64.const 0)
  )
  (loop $label$21
   (block $label$22
    (block $label$23
     (block $label$24
      (block $label$25
       (block $label$26
        (br_if $label$26
         (i64.gt_u
          (get_local $8)
          (i64.const 6)
         )
        )
        (br_if $label$25
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $4
             (i32.load8_s
              (get_local $7)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $4
         (i32.add
          (get_local $4)
          (i32.const 165)
         )
        )
        (br $label$24)
       )
       (set_local $11
        (i64.const 0)
       )
       (br_if $label$23
        (i64.le_u
         (get_local $8)
         (i64.const 11)
        )
       )
       (br $label$22)
      )
      (set_local $4
       (select
        (i32.add
         (get_local $4)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $11
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $4)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $11
     (i64.shl
      (i64.and
       (get_local $11)
       (i64.const 31)
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $12
    (i64.or
     (get_local $11)
     (get_local $12)
    )
   )
   (br_if $label$21
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=16
   (get_local $13)
   (get_local $12)
  )
  (i64.store offset=8
   (get_local $13)
   (get_local $1)
  )
  (i64.store
   (tee_local $7
    (call $_Znwj
     (i32.const 16)
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $7)
   (get_local $9)
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $13)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 32)
   )
   (tee_local $0
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 28)
   )
   (get_local $0)
  )
  (i32.store offset=24
   (get_local $13)
   (get_local $7)
  )
  (i32.store offset=36
   (get_local $13)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 44)
   )
   (i32.const 0)
  )
  (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
   (i32.add
    (get_local $13)
    (i32.const 36)
   )
   (i32.const 68)
  )
  (set_local $7
   (i32.load
    (get_local $4)
   )
  )
  (i32.store offset=164
   (get_local $13)
   (tee_local $4
    (i32.load offset=36
     (get_local $13)
    )
   )
  )
  (i32.store offset=160
   (get_local $13)
   (get_local $4)
  )
  (i32.store offset=168
   (get_local $13)
   (get_local $7)
  )
  (i32.store offset=176
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 160)
   )
  )
  (i32.store offset=188
   (get_local $13)
   (get_local $5)
  )
  (i32.store offset=192
   (get_local $13)
   (get_local $6)
  )
  (i32.store offset=196
   (get_local $13)
   (get_local $3)
  )
  (i32.store offset=200
   (get_local $13)
   (get_local $2)
  )
  (i32.store offset=184
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 48)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio14extended_assetESA_RKmEEEZNS7_lsINS7_10datastreamIPcEEN12eosotcbackup3recELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3ELj4EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE
   (i32.add
    (get_local $13)
    (i32.const 184)
   )
   (i32.add
    (get_local $13)
    (i32.const 176)
   )
  )
  (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
   (i32.add
    (get_local $13)
    (i32.const 184)
   )
   (i32.add
    (get_local $13)
    (i32.const 8)
   )
  )
  (call $send_inline
   (tee_local $7
    (i32.load offset=184
     (get_local $13)
    )
   )
   (i32.sub
    (i32.load offset=188
     (get_local $13)
    )
    (get_local $7)
   )
  )
  (block $label$27
   (br_if $label$27
    (i32.eqz
     (tee_local $7
      (i32.load offset=184
       (get_local $13)
      )
     )
    )
   )
   (i32.store offset=188
    (get_local $13)
    (get_local $7)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (block $label$28
   (br_if $label$28
    (i32.eqz
     (tee_local $7
      (i32.load offset=36
       (get_local $13)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $13)
     (i32.const 40)
    )
    (get_local $7)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (block $label$29
   (br_if $label$29
    (i32.eqz
     (tee_local $7
      (i32.load offset=24
       (get_local $13)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $13)
     (i32.const 28)
    )
    (get_local $7)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (block $label$30
   (br_if $label$30
    (i32.eqz
     (tee_local $2
      (i32.load offset=144
       (get_local $13)
      )
     )
    )
   )
   (block $label$31
    (block $label$32
     (br_if $label$32
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $13)
           (i32.const 148)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$33
      (set_local $4
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.const 0)
      )
      (block $label$34
       (br_if $label$34
        (i32.eqz
         (get_local $4)
        )
       )
       (call $_ZdlPv
        (get_local $4)
       )
      )
      (br_if $label$33
       (i32.ne
        (get_local $2)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $13)
        (i32.const 144)
       )
      )
     )
     (br $label$31)
    )
    (set_local $7
     (get_local $2)
    )
   )
   (i32.store
    (get_local $3)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $13)
    (i32.const 208)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 432)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (set_local $4
    (call $_ZN12eosotcbackup5orderC2Ev
     (tee_local $6
      (call $_Znwj
       (i32.const 80)
      )
     )
    )
   )
   (i32.store offset=68
    (get_local $6)
    (get_local $0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN12eosotcbackup5orderE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $4)
    )
   )
   (i32.store offset=76
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=72
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=72
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS1_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_9get_priceEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=72
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 384)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const -6497942746098040832)
      )
     )
     (i32.const -1)
    )
    (i32.const 320)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 320)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN12eosotcbackup5orderC2Ev (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 224)
  )
  (set_local $1
   (i64.shr_u
    (i64.load
     (get_local $2)
    )
    (i64.const 8)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $3
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $3)
   (i32.const 288)
  )
  (i64.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
   )
   (i64.const 1398362884)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 224)
  )
  (set_local $1
   (i64.shr_u
    (i64.load
     (get_local $2)
    )
    (i64.const 8)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$5
   (block $label$6
    (loop $label$7
     (br_if $label$6
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$8
      (br_if $label$8
       (i64.ne
        (i64.and
         (tee_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$9
       (br_if $label$6
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$9
        (i32.lt_s
         (tee_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $3
      (i32.const 1)
     )
     (br_if $label$7
      (i32.lt_s
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$5)
    )
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $3)
   (i32.const 288)
  )
  (get_local $0)
 )
 (func $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN12eosotcbackup5orderE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 3)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS1_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS4_dXadL_ZNKS4_9get_priceEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio14extended_assetESA_RKmEEEZNS7_lsINS7_10datastreamIPcEEN12eosotcbackup3recELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3ELj4EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $0)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $5
   (i32.const 16)
  )
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$0
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $3)
     (get_local $7)
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $5)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.sub
     (tee_local $7
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $5)
    )
    (tee_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (get_local $3)
     (get_local $7)
    )
   )
  )
  (loop $label$2
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (i32.load
      (get_local $0)
     )
    )
    (br $label$3)
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $7)
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (tee_local $0
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
    (call $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (get_local $8)
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $3
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $7)
    (i32.or
     (i32.shl
      (tee_local $6
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $3)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $2)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $6)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 208)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 208)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $6)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
    (get_local $5)
   )
  )
  (i32.store
   (get_local $6)
   (i32.add
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN12eosotcbackup5orderE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 3)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (get_local $0)
 )
 (func $_ZN12eosotcbackup7receiptERKNS_3recE (param $0 i32) (param $1 i32)
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_ZN12eosotcbackup4takeEyyN5eosio14extended_assetES1_ (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $24
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 384)
    )
   )
  )
  (set_local $23
   (i64.load offset=16
    (get_local $3)
   )
  )
  (set_local $20
   (i64.const 0)
  )
  (set_local $19
   (i64.const 59)
  )
  (set_local $18
   (i32.const 16)
  )
  (set_local $21
   (i64.const 0)
  )
  (loop $label$0
   (set_local $22
    (i64.const 0)
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i64.gt_u
       (get_local $20)
       (i64.const 13)
      )
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $5
            (i32.load8_s
             (get_local $18)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 165)
        )
       )
       (br $label$3)
      )
      (set_local $5
       (select
        (i32.add
         (get_local $5)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $5)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $22
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $5)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
     (br_if $label$2
      (i64.gt_u
       (get_local $20)
       (i64.const 11)
      )
     )
     (set_local $22
      (i64.shl
       (i64.and
        (get_local $22)
        (i64.const 31)
       )
       (i64.and
        (get_local $19)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$1)
    )
    (set_local $22
     (i64.and
      (get_local $22)
      (i64.const 15)
     )
    )
   )
   (set_local $18
    (i32.add
     (get_local $18)
     (i32.const 1)
    )
   )
   (set_local $20
    (i64.add
     (get_local $20)
     (i64.const 1)
    )
   )
   (set_local $21
    (i64.or
     (get_local $22)
     (get_local $21)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $19
      (i64.add
       (get_local $19)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $23)
    (get_local $21)
   )
   (i32.const 480)
  )
  (set_local $6
   (i64.load offset=16
    (get_local $4)
   )
  )
  (set_local $20
   (i64.const 0)
  )
  (set_local $19
   (i64.const 59)
  )
  (set_local $18
   (i32.const 16)
  )
  (set_local $21
   (i64.const 0)
  )
  (loop $label$5
   (set_local $22
    (i64.const 0)
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i64.gt_u
       (get_local $20)
       (i64.const 13)
      )
     )
     (block $label$8
      (block $label$9
       (br_if $label$9
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $5
            (i32.load8_s
             (get_local $18)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 165)
        )
       )
       (br $label$8)
      )
      (set_local $5
       (select
        (i32.add
         (get_local $5)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $5)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $22
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $5)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
     (br_if $label$7
      (i64.gt_u
       (get_local $20)
       (i64.const 11)
      )
     )
     (set_local $22
      (i64.shl
       (i64.and
        (get_local $22)
        (i64.const 31)
       )
       (i64.and
        (get_local $19)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$6)
    )
    (set_local $22
     (i64.and
      (get_local $22)
      (i64.const 15)
     )
    )
   )
   (set_local $18
    (i32.add
     (get_local $18)
     (i32.const 1)
    )
   )
   (set_local $20
    (i64.add
     (get_local $20)
     (i64.const 1)
    )
   )
   (set_local $21
    (i64.or
     (get_local $22)
     (get_local $21)
    )
   )
   (br_if $label$5
    (i64.ne
     (tee_local $19
      (i64.add
       (get_local $19)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $6)
    (get_local $21)
   )
   (i32.const 480)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $24)
     (i32.const 248)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=264
   (get_local $24)
   (i64.const -1)
  )
  (set_local $20
   (i64.const 0)
  )
  (i64.store offset=272
   (get_local $24)
   (i64.const 0)
  )
  (i64.store offset=248
   (get_local $24)
   (tee_local $22
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=256
   (get_local $24)
   (get_local $23)
  )
  (i32.store8 offset=284
   (get_local $24)
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$10
   (br_if $label$10
    (i32.lt_s
     (tee_local $18
      (call $db_find_i64
       (get_local $22)
       (get_local $23)
       (i64.const -6497942746098040832)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=68
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $24)
         (i32.const 248)
        )
        (get_local $18)
       )
      )
     )
     (i32.add
      (get_local $24)
      (i32.const 248)
     )
    )
    (i32.const 496)
   )
  )
  (set_local $23
   (i64.load
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
  )
  (set_local $19
   (i64.const 59)
  )
  (set_local $18
   (i32.const 16)
  )
  (set_local $21
   (i64.const 0)
  )
  (loop $label$11
   (set_local $22
    (i64.const 0)
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i64.gt_u
       (get_local $20)
       (i64.const 13)
      )
     )
     (block $label$14
      (block $label$15
       (br_if $label$15
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $5
            (i32.load8_s
             (get_local $18)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 165)
        )
       )
       (br $label$14)
      )
      (set_local $5
       (select
        (i32.add
         (get_local $5)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $5)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $22
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $5)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
     (br_if $label$13
      (i64.gt_u
       (get_local $20)
       (i64.const 11)
      )
     )
     (set_local $22
      (i64.shl
       (i64.and
        (get_local $22)
        (i64.const 31)
       )
       (i64.and
        (get_local $19)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$12)
    )
    (set_local $22
     (i64.and
      (get_local $22)
      (i64.const 15)
     )
    )
   )
   (set_local $18
    (i32.add
     (get_local $18)
     (i32.const 1)
    )
   )
   (set_local $20
    (i64.add
     (get_local $20)
     (i64.const 1)
    )
   )
   (set_local $21
    (i64.or
     (get_local $22)
     (get_local $21)
    )
   )
   (br_if $label$11
    (i64.ne
     (tee_local $19
      (i64.add
       (get_local $19)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$16
   (br_if $label$16
    (i64.ne
     (get_local $23)
     (get_local $21)
    )
   )
   (call $eosio_assert
    (i32.const 0)
    (i32.const 480)
   )
  )
  (call $eosio_assert
   (tee_local $8
    (i32.ne
     (get_local $7)
     (i32.const 0)
    )
   )
   (i32.const 560)
  )
  (call $__multi3
   (i32.add
    (get_local $24)
    (i32.const 40)
   )
   (tee_local $2
    (i64.load
     (get_local $4)
    )
   )
   (tee_local $19
    (i64.shr_s
     (get_local $2)
     (i64.const 63)
    )
   )
   (tee_local $20
    (i64.load offset=40
     (get_local $7)
    )
   )
   (i64.shr_s
    (get_local $20)
    (i64.const 63)
   )
  )
  (call $__multi3
   (i32.add
    (get_local $24)
    (i32.const 56)
   )
   (tee_local $20
    (i64.load
     (get_local $3)
    )
   )
   (i64.shr_s
    (get_local $20)
    (i64.const 63)
   )
   (tee_local $20
    (i64.load offset=16
     (get_local $7)
    )
   )
   (i64.shr_s
    (get_local $20)
    (i64.const 63)
   )
  )
  (call $eosio_assert
   (select
    (i64.gt_u
     (i64.load offset=56
      (get_local $24)
     )
     (i64.load offset=40
      (get_local $24)
     )
    )
    (i64.gt_u
     (tee_local $20
      (i64.load
       (i32.add
        (i32.add
         (get_local $24)
         (i32.const 56)
        )
        (i32.const 8)
       )
      )
     )
     (tee_local $22
      (i64.load
       (i32.add
        (i32.add
         (get_local $24)
         (i32.const 40)
        )
        (i32.const 8)
       )
      )
     )
    )
    (i64.eq
     (get_local $20)
     (get_local $22)
    )
   )
   (i32.const 592)
  )
  (set_local $18
   (i32.wrap/i64
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
  )
  (block $label$17
   (block $label$18
    (block $label$19
     (block $label$20
      (block $label$21
       (block $label$22
        (block $label$23
         (block $label$24
          (block $label$25
           (block $label$26
            (block $label$27
             (block $label$28
              (block $label$29
               (block $label$30
                (block $label$31
                 (block $label$32
                  (block $label$33
                   (block $label$34
                    (block $label$35
                     (block $label$36
                      (br_if $label$36
                       (i64.le_s
                        (tee_local $20
                         (i64.load offset=16
                          (get_local $7)
                         )
                        )
                        (get_local $2)
                       )
                      )
                      (call $__multi3
                       (i32.add
                        (get_local $24)
                        (i32.const 24)
                       )
                       (get_local $2)
                       (get_local $19)
                       (get_local $20)
                       (i64.shr_s
                        (get_local $20)
                        (i64.const 63)
                       )
                      )
                      (call $__udivti3
                       (i32.add
                        (get_local $24)
                        (i32.const 8)
                       )
                       (i64.load offset=24
                        (get_local $24)
                       )
                       (i64.load
                        (i32.add
                         (i32.add
                          (get_local $24)
                          (i32.const 24)
                         )
                         (i32.const 8)
                        )
                       )
                       (tee_local $20
                        (i64.load
                         (i32.add
                          (get_local $7)
                          (i32.const 40)
                         )
                        )
                       )
                       (i64.shr_s
                        (get_local $20)
                        (i64.const 63)
                       )
                      )
                      (i64.store
                       (get_local $3)
                       (tee_local $10
                        (i64.load offset=8
                         (get_local $24)
                        )
                       )
                      )
                      (set_local $9
                       (i64.load offset=8
                        (get_local $4)
                       )
                      )
                      (set_local $11
                       (i64.load offset=8
                        (get_local $3)
                       )
                      )
                      (set_local $20
                       (i64.load
                        (get_local $7)
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 180)
                       )
                       (i32.load
                        (i32.add
                         (get_local $4)
                         (i32.const 20)
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 176)
                       )
                       (i32.load
                        (i32.add
                         (get_local $4)
                         (i32.const 16)
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 172)
                       )
                       (i32.load
                        (i32.add
                         (get_local $4)
                         (i32.const 12)
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 168)
                       )
                       (i32.load offset=8
                        (get_local $4)
                       )
                      )
                      (i32.store
                       (i32.add
                        (i32.add
                         (get_local $24)
                         (i32.const 144)
                        )
                        (i32.const 20)
                       )
                       (i32.load
                        (i32.add
                         (get_local $4)
                         (i32.const 4)
                        )
                       )
                      )
                      (i64.store offset=152
                       (get_local $24)
                       (get_local $1)
                      )
                      (i64.store offset=144
                       (get_local $24)
                       (get_local $20)
                      )
                      (i32.store offset=160
                       (get_local $24)
                       (i32.load
                        (get_local $4)
                       )
                      )
                      (i64.store
                       (i32.add
                        (get_local $24)
                        (i32.const 200)
                       )
                       (i64.load
                        (i32.add
                         (get_local $3)
                         (i32.const 16)
                        )
                       )
                      )
                      (i64.store
                       (i32.add
                        (get_local $24)
                        (i32.const 192)
                       )
                       (i64.load offset=8
                        (get_local $3)
                       )
                      )
                      (i64.store offset=184
                       (get_local $24)
                       (i64.load
                        (get_local $3)
                       )
                      )
                      (i32.store offset=208
                       (get_local $24)
                       (get_local $18)
                      )
                      (set_local $4
                       (i32.add
                        (get_local $24)
                        (i32.const 208)
                       )
                      )
                      (set_local $14
                       (i32.add
                        (i32.add
                         (get_local $24)
                         (i32.const 144)
                        )
                        (i32.const 40)
                       )
                      )
                      (set_local $13
                       (i32.add
                        (i32.add
                         (get_local $24)
                         (i32.const 144)
                        )
                        (i32.const 16)
                       )
                      )
                      (set_local $12
                       (i32.add
                        (i32.add
                         (get_local $24)
                         (i32.const 144)
                        )
                        (i32.const 8)
                       )
                      )
                      (set_local $15
                       (i64.load
                        (get_local $0)
                       )
                      )
                      (set_local $20
                       (i64.const 0)
                      )
                      (set_local $19
                       (i64.const 59)
                      )
                      (set_local $18
                       (i32.const 176)
                      )
                      (set_local $21
                       (i64.const 0)
                      )
                      (loop $label$37
                       (block $label$38
                        (block $label$39
                         (block $label$40
                          (block $label$41
                           (block $label$42
                            (br_if $label$42
                             (i64.gt_u
                              (get_local $20)
                              (i64.const 5)
                             )
                            )
                            (br_if $label$41
                             (i32.gt_u
                              (i32.and
                               (i32.add
                                (tee_local $5
                                 (i32.load8_s
                                  (get_local $18)
                                 )
                                )
                                (i32.const -97)
                               )
                               (i32.const 255)
                              )
                              (i32.const 25)
                             )
                            )
                            (set_local $5
                             (i32.add
                              (get_local $5)
                              (i32.const 165)
                             )
                            )
                            (br $label$40)
                           )
                           (set_local $22
                            (i64.const 0)
                           )
                           (br_if $label$39
                            (i64.le_u
                             (get_local $20)
                             (i64.const 11)
                            )
                           )
                           (br $label$38)
                          )
                          (set_local $5
                           (select
                            (i32.add
                             (get_local $5)
                             (i32.const 208)
                            )
                            (i32.const 0)
                            (i32.lt_u
                             (i32.and
                              (i32.add
                               (get_local $5)
                               (i32.const -49)
                              )
                              (i32.const 255)
                             )
                             (i32.const 5)
                            )
                           )
                          )
                         )
                         (set_local $22
                          (i64.shr_s
                           (i64.shl
                            (i64.extend_u/i32
                             (get_local $5)
                            )
                            (i64.const 56)
                           )
                           (i64.const 56)
                          )
                         )
                        )
                        (set_local $22
                         (i64.shl
                          (i64.and
                           (get_local $22)
                           (i64.const 31)
                          )
                          (i64.and
                           (get_local $19)
                           (i64.const 4294967295)
                          )
                         )
                        )
                       )
                       (set_local $18
                        (i32.add
                         (get_local $18)
                         (i32.const 1)
                        )
                       )
                       (set_local $20
                        (i64.add
                         (get_local $20)
                         (i64.const 1)
                        )
                       )
                       (set_local $21
                        (i64.or
                         (get_local $22)
                         (get_local $21)
                        )
                       )
                       (br_if $label$37
                        (i64.ne
                         (tee_local $19
                          (i64.add
                           (get_local $19)
                           (i64.const -5)
                          )
                         )
                         (i64.const -6)
                        )
                       )
                      )
                      (set_local $20
                       (i64.const 0)
                      )
                      (set_local $19
                       (i64.const 59)
                      )
                      (set_local $18
                       (i32.const 192)
                      )
                      (set_local $23
                       (i64.const 0)
                      )
                      (loop $label$43
                       (block $label$44
                        (block $label$45
                         (block $label$46
                          (block $label$47
                           (block $label$48
                            (br_if $label$48
                             (i64.gt_u
                              (get_local $20)
                              (i64.const 6)
                             )
                            )
                            (br_if $label$47
                             (i32.gt_u
                              (i32.and
                               (i32.add
                                (tee_local $5
                                 (i32.load8_s
                                  (get_local $18)
                                 )
                                )
                                (i32.const -97)
                               )
                               (i32.const 255)
                              )
                              (i32.const 25)
                             )
                            )
                            (set_local $5
                             (i32.add
                              (get_local $5)
                              (i32.const 165)
                             )
                            )
                            (br $label$46)
                           )
                           (set_local $22
                            (i64.const 0)
                           )
                           (br_if $label$45
                            (i64.le_u
                             (get_local $20)
                             (i64.const 11)
                            )
                           )
                           (br $label$44)
                          )
                          (set_local $5
                           (select
                            (i32.add
                             (get_local $5)
                             (i32.const 208)
                            )
                            (i32.const 0)
                            (i32.lt_u
                             (i32.and
                              (i32.add
                               (get_local $5)
                               (i32.const -49)
                              )
                              (i32.const 255)
                             )
                             (i32.const 5)
                            )
                           )
                          )
                         )
                         (set_local $22
                          (i64.shr_s
                           (i64.shl
                            (i64.extend_u/i32
                             (get_local $5)
                            )
                            (i64.const 56)
                           )
                           (i64.const 56)
                          )
                         )
                        )
                        (set_local $22
                         (i64.shl
                          (i64.and
                           (get_local $22)
                           (i64.const 31)
                          )
                          (i64.and
                           (get_local $19)
                           (i64.const 4294967295)
                          )
                         )
                        )
                       )
                       (set_local $18
                        (i32.add
                         (get_local $18)
                         (i32.const 1)
                        )
                       )
                       (set_local $20
                        (i64.add
                         (get_local $20)
                         (i64.const 1)
                        )
                       )
                       (set_local $23
                        (i64.or
                         (get_local $22)
                         (get_local $23)
                        )
                       )
                       (br_if $label$43
                        (i64.ne
                         (tee_local $19
                          (i64.add
                           (get_local $19)
                           (i64.const -5)
                          )
                         )
                         (i64.const -6)
                        )
                       )
                      )
                      (i32.store
                       (tee_local $5
                        (i32.add
                         (get_local $24)
                         (i32.const 312)
                        )
                       )
                       (i32.const 0)
                      )
                      (i64.store offset=296
                       (get_local $24)
                       (get_local $23)
                      )
                      (i64.store offset=288
                       (get_local $24)
                       (get_local $15)
                      )
                      (i64.store offset=304
                       (get_local $24)
                       (i64.const 0)
                      )
                      (i64.store
                       (tee_local $18
                        (call $_Znwj
                         (i32.const 16)
                        )
                       )
                       (get_local $15)
                      )
                      (i64.store offset=8
                       (get_local $18)
                       (get_local $21)
                      )
                      (i32.store
                       (tee_local $16
                        (i32.add
                         (get_local $24)
                         (i32.const 320)
                        )
                       )
                       (i32.const 0)
                      )
                      (i32.store
                       (get_local $5)
                       (tee_local $17
                        (i32.add
                         (get_local $18)
                         (i32.const 16)
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 308)
                       )
                       (get_local $17)
                      )
                      (i32.store offset=304
                       (get_local $24)
                       (get_local $18)
                      )
                      (i32.store offset=316
                       (get_local $24)
                       (i32.const 0)
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 324)
                       )
                       (i32.const 0)
                      )
                      (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
                       (i32.add
                        (get_local $24)
                        (i32.const 316)
                       )
                       (i32.const 68)
                      )
                      (set_local $18
                       (i32.load
                        (get_local $16)
                       )
                      )
                      (i32.store offset=236
                       (get_local $24)
                       (tee_local $5
                        (i32.load offset=316
                         (get_local $24)
                        )
                       )
                      )
                      (i32.store offset=232
                       (get_local $24)
                       (get_local $5)
                      )
                      (i32.store offset=240
                       (get_local $24)
                       (get_local $18)
                      )
                      (i32.store offset=216
                       (get_local $24)
                       (i32.add
                        (get_local $24)
                        (i32.const 232)
                       )
                      )
                      (i32.store offset=108
                       (get_local $24)
                       (get_local $12)
                      )
                      (i32.store offset=112
                       (get_local $24)
                       (get_local $13)
                      )
                      (i32.store offset=116
                       (get_local $24)
                       (get_local $14)
                      )
                      (i32.store offset=120
                       (get_local $24)
                       (get_local $4)
                      )
                      (i32.store offset=104
                       (get_local $24)
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                      )
                      (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio14extended_assetESA_RKmEEEZNS7_lsINS7_10datastreamIPcEEN12eosotcbackup3recELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3ELj4EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE
                       (i32.add
                        (get_local $24)
                        (i32.const 104)
                       )
                       (i32.add
                        (get_local $24)
                        (i32.const 216)
                       )
                      )
                      (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
                       (i32.add
                        (get_local $24)
                        (i32.const 104)
                       )
                       (i32.add
                        (get_local $24)
                        (i32.const 288)
                       )
                      )
                      (call $send_inline
                       (tee_local $18
                        (i32.load offset=104
                         (get_local $24)
                        )
                       )
                       (i32.sub
                        (i32.load offset=108
                         (get_local $24)
                        )
                        (get_local $18)
                       )
                      )
                      (block $label$49
                       (br_if $label$49
                        (i32.eqz
                         (tee_local $18
                          (i32.load offset=104
                           (get_local $24)
                          )
                         )
                        )
                       )
                       (i32.store offset=108
                        (get_local $24)
                        (get_local $18)
                       )
                       (call $_ZdlPv
                        (get_local $18)
                       )
                      )
                      (block $label$50
                       (br_if $label$50
                        (i32.eqz
                         (tee_local $18
                          (i32.load offset=316
                           (get_local $24)
                          )
                         )
                        )
                       )
                       (i32.store
                        (i32.add
                         (get_local $24)
                         (i32.const 320)
                        )
                        (get_local $18)
                       )
                       (call $_ZdlPv
                        (get_local $18)
                       )
                      )
                      (block $label$51
                       (br_if $label$51
                        (i32.eqz
                         (tee_local $18
                          (i32.load offset=304
                           (get_local $24)
                          )
                         )
                        )
                       )
                       (i32.store
                        (i32.add
                         (get_local $24)
                         (i32.const 308)
                        )
                        (get_local $18)
                       )
                       (call $_ZdlPv
                        (get_local $18)
                       )
                      )
                      (set_local $23
                       (i64.load
                        (get_local $0)
                       )
                      )
                      (set_local $20
                       (i64.const 0)
                      )
                      (set_local $19
                       (i64.const 59)
                      )
                      (set_local $18
                       (i32.const 176)
                      )
                      (set_local $21
                       (i64.const 0)
                      )
                      (loop $label$52
                       (block $label$53
                        (block $label$54
                         (block $label$55
                          (block $label$56
                           (block $label$57
                            (br_if $label$57
                             (i64.gt_u
                              (get_local $20)
                              (i64.const 5)
                             )
                            )
                            (br_if $label$56
                             (i32.gt_u
                              (i32.and
                               (i32.add
                                (tee_local $5
                                 (i32.load8_s
                                  (get_local $18)
                                 )
                                )
                                (i32.const -97)
                               )
                               (i32.const 255)
                              )
                              (i32.const 25)
                             )
                            )
                            (set_local $5
                             (i32.add
                              (get_local $5)
                              (i32.const 165)
                             )
                            )
                            (br $label$55)
                           )
                           (set_local $22
                            (i64.const 0)
                           )
                           (br_if $label$54
                            (i64.le_u
                             (get_local $20)
                             (i64.const 11)
                            )
                           )
                           (br $label$53)
                          )
                          (set_local $5
                           (select
                            (i32.add
                             (get_local $5)
                             (i32.const 208)
                            )
                            (i32.const 0)
                            (i32.lt_u
                             (i32.and
                              (i32.add
                               (get_local $5)
                               (i32.const -49)
                              )
                              (i32.const 255)
                             )
                             (i32.const 5)
                            )
                           )
                          )
                         )
                         (set_local $22
                          (i64.shr_s
                           (i64.shl
                            (i64.extend_u/i32
                             (get_local $5)
                            )
                            (i64.const 56)
                           )
                           (i64.const 56)
                          )
                         )
                        )
                        (set_local $22
                         (i64.shl
                          (i64.and
                           (get_local $22)
                           (i64.const 31)
                          )
                          (i64.and
                           (get_local $19)
                           (i64.const 4294967295)
                          )
                         )
                        )
                       )
                       (set_local $18
                        (i32.add
                         (get_local $18)
                         (i32.const 1)
                        )
                       )
                       (set_local $20
                        (i64.add
                         (get_local $20)
                         (i64.const 1)
                        )
                       )
                       (set_local $21
                        (i64.or
                         (get_local $22)
                         (get_local $21)
                        )
                       )
                       (br_if $label$52
                        (i64.ne
                         (tee_local $19
                          (i64.add
                           (get_local $19)
                           (i64.const -5)
                          )
                         )
                         (i64.const -6)
                        )
                       )
                      )
                      (i64.store offset=240
                       (get_local $24)
                       (get_local $21)
                      )
                      (i64.store offset=232
                       (get_local $24)
                       (get_local $23)
                      )
                      (set_local $20
                       (i64.const 0)
                      )
                      (set_local $19
                       (i64.const 59)
                      )
                      (set_local $18
                       (i32.const 624)
                      )
                      (set_local $21
                       (i64.const 0)
                      )
                      (loop $label$58
                       (block $label$59
                        (block $label$60
                         (block $label$61
                          (block $label$62
                           (block $label$63
                            (br_if $label$63
                             (i64.gt_u
                              (get_local $20)
                              (i64.const 7)
                             )
                            )
                            (br_if $label$62
                             (i32.gt_u
                              (i32.and
                               (i32.add
                                (tee_local $5
                                 (i32.load8_s
                                  (get_local $18)
                                 )
                                )
                                (i32.const -97)
                               )
                               (i32.const 255)
                              )
                              (i32.const 25)
                             )
                            )
                            (set_local $5
                             (i32.add
                              (get_local $5)
                              (i32.const 165)
                             )
                            )
                            (br $label$61)
                           )
                           (set_local $22
                            (i64.const 0)
                           )
                           (br_if $label$60
                            (i64.le_u
                             (get_local $20)
                             (i64.const 11)
                            )
                           )
                           (br $label$59)
                          )
                          (set_local $5
                           (select
                            (i32.add
                             (get_local $5)
                             (i32.const 208)
                            )
                            (i32.const 0)
                            (i32.lt_u
                             (i32.and
                              (i32.add
                               (get_local $5)
                               (i32.const -49)
                              )
                              (i32.const 255)
                             )
                             (i32.const 5)
                            )
                           )
                          )
                         )
                         (set_local $22
                          (i64.shr_s
                           (i64.shl
                            (i64.extend_u/i32
                             (get_local $5)
                            )
                            (i64.const 56)
                           )
                           (i64.const 56)
                          )
                         )
                        )
                        (set_local $22
                         (i64.shl
                          (i64.and
                           (get_local $22)
                           (i64.const 31)
                          )
                          (i64.and
                           (get_local $19)
                           (i64.const 4294967295)
                          )
                         )
                        )
                       )
                       (set_local $18
                        (i32.add
                         (get_local $18)
                         (i32.const 1)
                        )
                       )
                       (set_local $20
                        (i64.add
                         (get_local $20)
                         (i64.const 1)
                        )
                       )
                       (set_local $21
                        (i64.or
                         (get_local $22)
                         (get_local $21)
                        )
                       )
                       (br_if $label$58
                        (i64.ne
                         (tee_local $19
                          (i64.add
                           (get_local $19)
                           (i64.const -5)
                          )
                         )
                         (i64.const -6)
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 96)
                       )
                       (i32.const 0)
                      )
                      (i64.store offset=88
                       (get_local $24)
                       (i64.const 0)
                      )
                      (br_if $label$20
                       (i32.ge_u
                        (tee_local $18
                         (call $strlen
                          (i32.const 640)
                         )
                        )
                        (i32.const -16)
                       )
                      )
                      (br_if $label$35
                       (i32.ge_u
                        (get_local $18)
                        (i32.const 11)
                       )
                      )
                      (i32.store8 offset=88
                       (get_local $24)
                       (i32.shl
                        (get_local $18)
                        (i32.const 1)
                       )
                      )
                      (set_local $5
                       (i32.or
                        (i32.add
                         (get_local $24)
                         (i32.const 88)
                        )
                        (i32.const 1)
                       )
                      )
                      (br_if $label$34
                       (get_local $18)
                      )
                      (br $label$33)
                     )
                     (i64.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 232)
                       )
                       (i32.const 8)
                      )
                      (i64.load
                       (tee_local $5
                        (i32.add
                         (get_local $7)
                         (i32.const 24)
                        )
                       )
                      )
                     )
                     (i64.store offset=232
                      (get_local $24)
                      (i64.load offset=16
                       (get_local $7)
                      )
                     )
                     (i64.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 216)
                       )
                       (i32.const 8)
                      )
                      (i64.load
                       (tee_local $4
                        (i32.add
                         (get_local $7)
                         (i32.const 48)
                        )
                       )
                      )
                     )
                     (i64.store offset=216
                      (get_local $24)
                      (i64.load offset=40
                       (get_local $7)
                      )
                     )
                     (set_local $20
                      (i64.load
                       (get_local $7)
                      )
                     )
                     (i32.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 36)
                      )
                      (i32.load
                       (i32.add
                        (get_local $7)
                        (i32.const 36)
                       )
                      )
                     )
                     (i32.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 32)
                      )
                      (i32.load
                       (i32.add
                        (get_local $7)
                        (i32.const 32)
                       )
                      )
                     )
                     (i32.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 28)
                      )
                      (i32.load
                       (i32.add
                        (get_local $7)
                        (i32.const 28)
                       )
                      )
                     )
                     (i32.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 24)
                      )
                      (i32.load
                       (get_local $5)
                      )
                     )
                     (i32.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 20)
                      )
                      (i32.load
                       (i32.add
                        (get_local $7)
                        (i32.const 20)
                       )
                      )
                     )
                     (i64.store offset=152
                      (get_local $24)
                      (get_local $1)
                     )
                     (i64.store offset=144
                      (get_local $24)
                      (get_local $20)
                     )
                     (i32.store offset=160
                      (get_local $24)
                      (i32.load offset=16
                       (get_local $7)
                      )
                     )
                     (i64.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 56)
                      )
                      (i64.load
                       (i32.add
                        (get_local $7)
                        (i32.const 56)
                       )
                      )
                     )
                     (i64.store
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 48)
                      )
                      (i64.load
                       (get_local $4)
                      )
                     )
                     (i64.store offset=184
                      (get_local $24)
                      (i64.load offset=40
                       (get_local $7)
                      )
                     )
                     (i32.store offset=208
                      (get_local $24)
                      (get_local $18)
                     )
                     (set_local $4
                      (i32.add
                       (get_local $24)
                       (i32.const 208)
                      )
                     )
                     (set_local $14
                      (i32.add
                       (get_local $24)
                       (i32.const 184)
                      )
                     )
                     (set_local $13
                      (i32.add
                       (get_local $24)
                       (i32.const 160)
                      )
                     )
                     (set_local $12
                      (i32.add
                       (i32.add
                        (get_local $24)
                        (i32.const 144)
                       )
                       (i32.const 8)
                      )
                     )
                     (set_local $2
                      (i64.load
                       (get_local $0)
                      )
                     )
                     (set_local $20
                      (i64.const 0)
                     )
                     (set_local $19
                      (i64.const 59)
                     )
                     (set_local $18
                      (i32.const 176)
                     )
                     (set_local $21
                      (i64.const 0)
                     )
                     (loop $label$64
                      (block $label$65
                       (block $label$66
                        (block $label$67
                         (block $label$68
                          (block $label$69
                           (br_if $label$69
                            (i64.gt_u
                             (get_local $20)
                             (i64.const 5)
                            )
                           )
                           (br_if $label$68
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $18)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$67)
                          )
                          (set_local $22
                           (i64.const 0)
                          )
                          (br_if $label$66
                           (i64.le_u
                            (get_local $20)
                            (i64.const 11)
                           )
                          )
                          (br $label$65)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $22
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $22
                        (i64.shl
                         (i64.and
                          (get_local $22)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $19)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $18
                       (i32.add
                        (get_local $18)
                        (i32.const 1)
                       )
                      )
                      (set_local $20
                       (i64.add
                        (get_local $20)
                        (i64.const 1)
                       )
                      )
                      (set_local $21
                       (i64.or
                        (get_local $22)
                        (get_local $21)
                       )
                      )
                      (br_if $label$64
                       (i64.ne
                        (tee_local $19
                         (i64.add
                          (get_local $19)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (set_local $20
                      (i64.const 0)
                     )
                     (set_local $19
                      (i64.const 59)
                     )
                     (set_local $18
                      (i32.const 192)
                     )
                     (set_local $23
                      (i64.const 0)
                     )
                     (loop $label$70
                      (block $label$71
                       (block $label$72
                        (block $label$73
                         (block $label$74
                          (block $label$75
                           (br_if $label$75
                            (i64.gt_u
                             (get_local $20)
                             (i64.const 6)
                            )
                           )
                           (br_if $label$74
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $18)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$73)
                          )
                          (set_local $22
                           (i64.const 0)
                          )
                          (br_if $label$72
                           (i64.le_u
                            (get_local $20)
                            (i64.const 11)
                           )
                          )
                          (br $label$71)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $22
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $22
                        (i64.shl
                         (i64.and
                          (get_local $22)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $19)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $18
                       (i32.add
                        (get_local $18)
                        (i32.const 1)
                       )
                      )
                      (set_local $20
                       (i64.add
                        (get_local $20)
                        (i64.const 1)
                       )
                      )
                      (set_local $23
                       (i64.or
                        (get_local $22)
                        (get_local $23)
                       )
                      )
                      (br_if $label$70
                       (i64.ne
                        (tee_local $19
                         (i64.add
                          (get_local $19)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (i32.store
                      (tee_local $5
                       (i32.add
                        (get_local $24)
                        (i32.const 312)
                       )
                      )
                      (i32.const 0)
                     )
                     (i64.store offset=296
                      (get_local $24)
                      (get_local $23)
                     )
                     (i64.store offset=288
                      (get_local $24)
                      (get_local $2)
                     )
                     (i64.store offset=304
                      (get_local $24)
                      (i64.const 0)
                     )
                     (i64.store
                      (tee_local $18
                       (call $_Znwj
                        (i32.const 16)
                       )
                      )
                      (get_local $2)
                     )
                     (i64.store offset=8
                      (get_local $18)
                      (get_local $21)
                     )
                     (i32.store
                      (tee_local $16
                       (i32.add
                        (get_local $24)
                        (i32.const 320)
                       )
                      )
                      (i32.const 0)
                     )
                     (i32.store
                      (get_local $5)
                      (tee_local $17
                       (i32.add
                        (get_local $18)
                        (i32.const 16)
                       )
                      )
                     )
                     (i32.store
                      (i32.add
                       (get_local $24)
                       (i32.const 308)
                      )
                      (get_local $17)
                     )
                     (i32.store offset=304
                      (get_local $24)
                      (get_local $18)
                     )
                     (i32.store offset=316
                      (get_local $24)
                      (i32.const 0)
                     )
                     (i32.store
                      (i32.add
                       (get_local $24)
                       (i32.const 324)
                      )
                      (i32.const 0)
                     )
                     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
                      (i32.add
                       (get_local $24)
                       (i32.const 316)
                      )
                      (i32.const 68)
                     )
                     (set_local $18
                      (i32.load
                       (get_local $16)
                      )
                     )
                     (i32.store offset=92
                      (get_local $24)
                      (tee_local $5
                       (i32.load offset=316
                        (get_local $24)
                       )
                      )
                     )
                     (i32.store offset=88
                      (get_local $24)
                      (get_local $5)
                     )
                     (i32.store offset=96
                      (get_local $24)
                      (get_local $18)
                     )
                     (i32.store offset=368
                      (get_local $24)
                      (i32.add
                       (get_local $24)
                       (i32.const 88)
                      )
                     )
                     (i32.store offset=108
                      (get_local $24)
                      (get_local $12)
                     )
                     (i32.store offset=112
                      (get_local $24)
                      (get_local $13)
                     )
                     (i32.store offset=116
                      (get_local $24)
                      (get_local $14)
                     )
                     (i32.store offset=120
                      (get_local $24)
                      (get_local $4)
                     )
                     (i32.store offset=104
                      (get_local $24)
                      (i32.add
                       (get_local $24)
                       (i32.const 144)
                      )
                     )
                     (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio14extended_assetESA_RKmEEEZNS7_lsINS7_10datastreamIPcEEN12eosotcbackup3recELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3ELj4EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE
                      (i32.add
                       (get_local $24)
                       (i32.const 104)
                      )
                      (i32.add
                       (get_local $24)
                       (i32.const 368)
                      )
                     )
                     (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
                      (i32.add
                       (get_local $24)
                       (i32.const 104)
                      )
                      (i32.add
                       (get_local $24)
                       (i32.const 288)
                      )
                     )
                     (call $send_inline
                      (tee_local $18
                       (i32.load offset=104
                        (get_local $24)
                       )
                      )
                      (i32.sub
                       (i32.load offset=108
                        (get_local $24)
                       )
                       (get_local $18)
                      )
                     )
                     (block $label$76
                      (br_if $label$76
                       (i32.eqz
                        (tee_local $18
                         (i32.load offset=104
                          (get_local $24)
                         )
                        )
                       )
                      )
                      (i32.store offset=108
                       (get_local $24)
                       (get_local $18)
                      )
                      (call $_ZdlPv
                       (get_local $18)
                      )
                     )
                     (block $label$77
                      (br_if $label$77
                       (i32.eqz
                        (tee_local $18
                         (i32.load offset=316
                          (get_local $24)
                         )
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 320)
                       )
                       (get_local $18)
                      )
                      (call $_ZdlPv
                       (get_local $18)
                      )
                     )
                     (block $label$78
                      (br_if $label$78
                       (i32.eqz
                        (tee_local $18
                         (i32.load offset=304
                          (get_local $24)
                         )
                        )
                       )
                      )
                      (i32.store
                       (i32.add
                        (get_local $24)
                        (i32.const 308)
                       )
                       (get_local $18)
                      )
                      (call $_ZdlPv
                       (get_local $18)
                      )
                     )
                     (set_local $23
                      (i64.load
                       (get_local $0)
                      )
                     )
                     (set_local $20
                      (i64.const 0)
                     )
                     (set_local $19
                      (i64.const 59)
                     )
                     (set_local $18
                      (i32.const 176)
                     )
                     (set_local $21
                      (i64.const 0)
                     )
                     (loop $label$79
                      (block $label$80
                       (block $label$81
                        (block $label$82
                         (block $label$83
                          (block $label$84
                           (br_if $label$84
                            (i64.gt_u
                             (get_local $20)
                             (i64.const 5)
                            )
                           )
                           (br_if $label$83
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $18)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$82)
                          )
                          (set_local $22
                           (i64.const 0)
                          )
                          (br_if $label$81
                           (i64.le_u
                            (get_local $20)
                            (i64.const 11)
                           )
                          )
                          (br $label$80)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $22
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $22
                        (i64.shl
                         (i64.and
                          (get_local $22)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $19)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $18
                       (i32.add
                        (get_local $18)
                        (i32.const 1)
                       )
                      )
                      (set_local $20
                       (i64.add
                        (get_local $20)
                        (i64.const 1)
                       )
                      )
                      (set_local $21
                       (i64.or
                        (get_local $22)
                        (get_local $21)
                       )
                      )
                      (br_if $label$79
                       (i64.ne
                        (tee_local $19
                         (i64.add
                          (get_local $19)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (i64.store offset=96
                      (get_local $24)
                      (get_local $21)
                     )
                     (i64.store offset=88
                      (get_local $24)
                      (get_local $23)
                     )
                     (set_local $20
                      (i64.const 0)
                     )
                     (set_local $19
                      (i64.const 59)
                     )
                     (set_local $18
                      (i32.const 624)
                     )
                     (set_local $21
                      (i64.const 0)
                     )
                     (loop $label$85
                      (block $label$86
                       (block $label$87
                        (block $label$88
                         (block $label$89
                          (block $label$90
                           (br_if $label$90
                            (i64.gt_u
                             (get_local $20)
                             (i64.const 7)
                            )
                           )
                           (br_if $label$89
                            (i32.gt_u
                             (i32.and
                              (i32.add
                               (tee_local $5
                                (i32.load8_s
                                 (get_local $18)
                                )
                               )
                               (i32.const -97)
                              )
                              (i32.const 255)
                             )
                             (i32.const 25)
                            )
                           )
                           (set_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const 165)
                            )
                           )
                           (br $label$88)
                          )
                          (set_local $22
                           (i64.const 0)
                          )
                          (br_if $label$87
                           (i64.le_u
                            (get_local $20)
                            (i64.const 11)
                           )
                          )
                          (br $label$86)
                         )
                         (set_local $5
                          (select
                           (i32.add
                            (get_local $5)
                            (i32.const 208)
                           )
                           (i32.const 0)
                           (i32.lt_u
                            (i32.and
                             (i32.add
                              (get_local $5)
                              (i32.const -49)
                             )
                             (i32.const 255)
                            )
                            (i32.const 5)
                           )
                          )
                         )
                        )
                        (set_local $22
                         (i64.shr_s
                          (i64.shl
                           (i64.extend_u/i32
                            (get_local $5)
                           )
                           (i64.const 56)
                          )
                          (i64.const 56)
                         )
                        )
                       )
                       (set_local $22
                        (i64.shl
                         (i64.and
                          (get_local $22)
                          (i64.const 31)
                         )
                         (i64.and
                          (get_local $19)
                          (i64.const 4294967295)
                         )
                        )
                       )
                      )
                      (set_local $18
                       (i32.add
                        (get_local $18)
                        (i32.const 1)
                       )
                      )
                      (set_local $20
                       (i64.add
                        (get_local $20)
                        (i64.const 1)
                       )
                      )
                      (set_local $21
                       (i64.or
                        (get_local $22)
                        (get_local $21)
                       )
                      )
                      (br_if $label$85
                       (i64.ne
                        (tee_local $19
                         (i64.add
                          (get_local $19)
                          (i64.const -5)
                         )
                        )
                        (i64.const -6)
                       )
                      )
                     )
                     (i32.store
                      (i32.add
                       (get_local $24)
                       (i32.const 80)
                      )
                      (i32.const 0)
                     )
                     (i64.store offset=72
                      (get_local $24)
                      (i64.const 0)
                     )
                     (br_if $label$19
                      (i32.ge_u
                       (tee_local $18
                        (call $strlen
                         (i32.const 640)
                        )
                       )
                       (i32.const -16)
                      )
                     )
                     (br_if $label$32
                      (i32.ge_u
                       (get_local $18)
                       (i32.const 11)
                      )
                     )
                     (i32.store8 offset=72
                      (get_local $24)
                      (i32.shl
                       (get_local $18)
                       (i32.const 1)
                      )
                     )
                     (set_local $5
                      (i32.or
                       (i32.add
                        (get_local $24)
                        (i32.const 72)
                       )
                       (i32.const 1)
                      )
                     )
                     (br_if $label$31
                      (get_local $18)
                     )
                     (br $label$30)
                    )
                    (set_local $5
                     (call $_Znwj
                      (tee_local $4
                       (i32.and
                        (i32.add
                         (get_local $18)
                         (i32.const 16)
                        )
                        (i32.const -16)
                       )
                      )
                     )
                    )
                    (i32.store offset=88
                     (get_local $24)
                     (i32.or
                      (get_local $4)
                      (i32.const 1)
                     )
                    )
                    (i32.store offset=96
                     (get_local $24)
                     (get_local $5)
                    )
                    (i32.store offset=92
                     (get_local $24)
                     (get_local $18)
                    )
                   )
                   (drop
                    (call $memcpy
                     (get_local $5)
                     (i32.const 640)
                     (get_local $18)
                    )
                   )
                  )
                  (i32.store8
                   (i32.add
                    (get_local $5)
                    (get_local $18)
                   )
                   (i32.const 0)
                  )
                  (i64.store
                   (i32.add
                    (get_local $24)
                    (i32.const 312)
                   )
                   (get_local $9)
                  )
                  (i32.store
                   (i32.add
                    (get_local $24)
                    (i32.const 324)
                   )
                   (i32.load offset=92
                    (get_local $24)
                   )
                  )
                  (i64.store offset=296
                   (get_local $24)
                   (get_local $1)
                  )
                  (i32.store
                   (i32.add
                    (get_local $24)
                    (i32.const 328)
                   )
                   (i32.load
                    (tee_local $18
                     (i32.add
                      (get_local $24)
                      (i32.const 96)
                     )
                    )
                   )
                  )
                  (i64.store offset=288
                   (get_local $24)
                   (i64.load
                    (get_local $0)
                   )
                  )
                  (i64.store offset=304
                   (get_local $24)
                   (get_local $2)
                  )
                  (i32.store offset=320
                   (get_local $24)
                   (i32.load offset=88
                    (get_local $24)
                   )
                  )
                  (i32.store offset=88
                   (get_local $24)
                   (i32.const 0)
                  )
                  (i32.store offset=92
                   (get_local $24)
                   (i32.const 0)
                  )
                  (i32.store
                   (get_local $18)
                   (i32.const 0)
                  )
                  (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
                   (i32.add
                    (get_local $24)
                    (i32.const 216)
                   )
                   (tee_local $18
                    (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
                     (i32.add
                      (get_local $24)
                      (i32.const 104)
                     )
                     (i32.add
                      (get_local $24)
                      (i32.const 232)
                     )
                     (get_local $6)
                     (get_local $21)
                     (i32.add
                      (get_local $24)
                      (i32.const 288)
                     )
                    )
                   )
                  )
                  (call $send_inline
                   (tee_local $5
                    (i32.load offset=216
                     (get_local $24)
                    )
                   )
                   (i32.sub
                    (i32.load offset=220
                     (get_local $24)
                    )
                    (get_local $5)
                   )
                  )
                  (block $label$91
                   (br_if $label$91
                    (i32.eqz
                     (tee_local $5
                      (i32.load offset=216
                       (get_local $24)
                      )
                     )
                    )
                   )
                   (i32.store offset=220
                    (get_local $24)
                    (get_local $5)
                   )
                   (call $_ZdlPv
                    (get_local $5)
                   )
                  )
                  (block $label$92
                   (br_if $label$92
                    (i32.eqz
                     (tee_local $5
                      (i32.load offset=28
                       (get_local $18)
                      )
                     )
                    )
                   )
                   (i32.store
                    (i32.add
                     (get_local $18)
                     (i32.const 32)
                    )
                    (get_local $5)
                   )
                   (call $_ZdlPv
                    (get_local $5)
                   )
                  )
                  (block $label$93
                   (br_if $label$93
                    (i32.eqz
                     (tee_local $5
                      (i32.load offset=16
                       (get_local $18)
                      )
                     )
                    )
                   )
                   (i32.store
                    (i32.add
                     (get_local $18)
                     (i32.const 20)
                    )
                    (get_local $5)
                   )
                   (call $_ZdlPv
                    (get_local $5)
                   )
                  )
                  (block $label$94
                   (br_if $label$94
                    (i32.eqz
                     (i32.and
                      (i32.load8_u
                       (i32.add
                        (get_local $24)
                        (i32.const 320)
                       )
                      )
                      (i32.const 1)
                     )
                    )
                   )
                   (call $_ZdlPv
                    (i32.load
                     (i32.add
                      (get_local $24)
                      (i32.const 328)
                     )
                    )
                   )
                  )
                  (block $label$95
                   (br_if $label$95
                    (i32.eqz
                     (i32.and
                      (i32.load8_u offset=88
                       (get_local $24)
                      )
                      (i32.const 1)
                     )
                    )
                   )
                   (call $_ZdlPv
                    (i32.load
                     (i32.add
                      (get_local $24)
                      (i32.const 96)
                     )
                    )
                   )
                  )
                  (set_local $23
                   (i64.load
                    (get_local $0)
                   )
                  )
                  (set_local $20
                   (i64.const 0)
                  )
                  (set_local $19
                   (i64.const 59)
                  )
                  (set_local $18
                   (i32.const 176)
                  )
                  (set_local $21
                   (i64.const 0)
                  )
                  (loop $label$96
                   (block $label$97
                    (block $label$98
                     (block $label$99
                      (block $label$100
                       (block $label$101
                        (br_if $label$101
                         (i64.gt_u
                          (get_local $20)
                          (i64.const 5)
                         )
                        )
                        (br_if $label$100
                         (i32.gt_u
                          (i32.and
                           (i32.add
                            (tee_local $5
                             (i32.load8_s
                              (get_local $18)
                             )
                            )
                            (i32.const -97)
                           )
                           (i32.const 255)
                          )
                          (i32.const 25)
                         )
                        )
                        (set_local $5
                         (i32.add
                          (get_local $5)
                          (i32.const 165)
                         )
                        )
                        (br $label$99)
                       )
                       (set_local $22
                        (i64.const 0)
                       )
                       (br_if $label$98
                        (i64.le_u
                         (get_local $20)
                         (i64.const 11)
                        )
                       )
                       (br $label$97)
                      )
                      (set_local $5
                       (select
                        (i32.add
                         (get_local $5)
                         (i32.const 208)
                        )
                        (i32.const 0)
                        (i32.lt_u
                         (i32.and
                          (i32.add
                           (get_local $5)
                           (i32.const -49)
                          )
                          (i32.const 255)
                         )
                         (i32.const 5)
                        )
                       )
                      )
                     )
                     (set_local $22
                      (i64.shr_s
                       (i64.shl
                        (i64.extend_u/i32
                         (get_local $5)
                        )
                        (i64.const 56)
                       )
                       (i64.const 56)
                      )
                     )
                    )
                    (set_local $22
                     (i64.shl
                      (i64.and
                       (get_local $22)
                       (i64.const 31)
                      )
                      (i64.and
                       (get_local $19)
                       (i64.const 4294967295)
                      )
                     )
                    )
                   )
                   (set_local $18
                    (i32.add
                     (get_local $18)
                     (i32.const 1)
                    )
                   )
                   (set_local $20
                    (i64.add
                     (get_local $20)
                     (i64.const 1)
                    )
                   )
                   (set_local $21
                    (i64.or
                     (get_local $22)
                     (get_local $21)
                    )
                   )
                   (br_if $label$96
                    (i64.ne
                     (tee_local $19
                      (i64.add
                       (get_local $19)
                       (i64.const -5)
                      )
                     )
                     (i64.const -6)
                    )
                   )
                  )
                  (i64.store offset=240
                   (get_local $24)
                   (get_local $21)
                  )
                  (i64.store offset=232
                   (get_local $24)
                   (get_local $23)
                  )
                  (set_local $23
                   (i64.load
                    (i32.add
                     (get_local $3)
                     (i32.const 16)
                    )
                   )
                  )
                  (set_local $20
                   (i64.const 0)
                  )
                  (set_local $19
                   (i64.const 59)
                  )
                  (set_local $18
                   (i32.const 624)
                  )
                  (set_local $21
                   (i64.const 0)
                  )
                  (loop $label$102
                   (block $label$103
                    (block $label$104
                     (block $label$105
                      (block $label$106
                       (block $label$107
                        (br_if $label$107
                         (i64.gt_u
                          (get_local $20)
                          (i64.const 7)
                         )
                        )
                        (br_if $label$106
                         (i32.gt_u
                          (i32.and
                           (i32.add
                            (tee_local $5
                             (i32.load8_s
                              (get_local $18)
                             )
                            )
                            (i32.const -97)
                           )
                           (i32.const 255)
                          )
                          (i32.const 25)
                         )
                        )
                        (set_local $5
                         (i32.add
                          (get_local $5)
                          (i32.const 165)
                         )
                        )
                        (br $label$105)
                       )
                       (set_local $22
                        (i64.const 0)
                       )
                       (br_if $label$104
                        (i64.le_u
                         (get_local $20)
                         (i64.const 11)
                        )
                       )
                       (br $label$103)
                      )
                      (set_local $5
                       (select
                        (i32.add
                         (get_local $5)
                         (i32.const 208)
                        )
                        (i32.const 0)
                        (i32.lt_u
                         (i32.and
                          (i32.add
                           (get_local $5)
                           (i32.const -49)
                          )
                          (i32.const 255)
                         )
                         (i32.const 5)
                        )
                       )
                      )
                     )
                     (set_local $22
                      (i64.shr_s
                       (i64.shl
                        (i64.extend_u/i32
                         (get_local $5)
                        )
                        (i64.const 56)
                       )
                       (i64.const 56)
                      )
                     )
                    )
                    (set_local $22
                     (i64.shl
                      (i64.and
                       (get_local $22)
                       (i64.const 31)
                      )
                      (i64.and
                       (get_local $19)
                       (i64.const 4294967295)
                      )
                     )
                    )
                   )
                   (set_local $18
                    (i32.add
                     (get_local $18)
                     (i32.const 1)
                    )
                   )
                   (set_local $20
                    (i64.add
                     (get_local $20)
                     (i64.const 1)
                    )
                   )
                   (set_local $21
                    (i64.or
                     (get_local $22)
                     (get_local $21)
                    )
                   )
                   (br_if $label$102
                    (i64.ne
                     (tee_local $19
                      (i64.add
                       (get_local $19)
                       (i64.const -5)
                      )
                     )
                     (i64.const -6)
                    )
                   )
                  )
                  (i32.store
                   (i32.add
                    (get_local $24)
                    (i32.const 96)
                   )
                   (i32.const 0)
                  )
                  (i64.store offset=88
                   (get_local $24)
                   (i64.const 0)
                  )
                  (br_if $label$18
                   (i32.ge_u
                    (tee_local $18
                     (call $strlen
                      (i32.const 640)
                     )
                    )
                    (i32.const -16)
                   )
                  )
                  (br_if $label$29
                   (i32.ge_u
                    (get_local $18)
                    (i32.const 11)
                   )
                  )
                  (i32.store8 offset=88
                   (get_local $24)
                   (i32.shl
                    (get_local $18)
                    (i32.const 1)
                   )
                  )
                  (set_local $5
                   (i32.or
                    (i32.add
                     (get_local $24)
                     (i32.const 88)
                    )
                    (i32.const 1)
                   )
                  )
                  (br_if $label$28
                   (get_local $18)
                  )
                  (br $label$27)
                 )
                 (set_local $5
                  (call $_Znwj
                   (tee_local $4
                    (i32.and
                     (i32.add
                      (get_local $18)
                      (i32.const 16)
                     )
                     (i32.const -16)
                    )
                   )
                  )
                 )
                 (i32.store offset=72
                  (get_local $24)
                  (i32.or
                   (get_local $4)
                   (i32.const 1)
                  )
                 )
                 (i32.store offset=80
                  (get_local $24)
                  (get_local $5)
                 )
                 (i32.store offset=76
                  (get_local $24)
                  (get_local $18)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $5)
                  (i32.const 640)
                  (get_local $18)
                 )
                )
               )
               (i32.store8
                (i32.add
                 (get_local $5)
                 (get_local $18)
                )
                (i32.const 0)
               )
               (i32.store
                (i32.add
                 (get_local $24)
                 (i32.const 308)
                )
                (i32.load offset=236
                 (get_local $24)
                )
               )
               (i64.store offset=296
                (get_local $24)
                (get_local $1)
               )
               (i32.store
                (i32.add
                 (get_local $24)
                 (i32.const 316)
                )
                (i32.load
                 (i32.add
                  (get_local $24)
                  (i32.const 244)
                 )
                )
               )
               (i32.store
                (i32.add
                 (get_local $24)
                 (i32.const 312)
                )
                (i32.load
                 (i32.add
                  (i32.add
                   (get_local $24)
                   (i32.const 232)
                  )
                  (i32.const 8)
                 )
                )
               )
               (i64.store offset=288
                (get_local $24)
                (i64.load
                 (get_local $0)
                )
               )
               (i32.store offset=304
                (get_local $24)
                (i32.load offset=232
                 (get_local $24)
                )
               )
               (i32.store
                (i32.add
                 (get_local $24)
                 (i32.const 328)
                )
                (i32.load
                 (tee_local $18
                  (i32.add
                   (i32.add
                    (get_local $24)
                    (i32.const 72)
                   )
                   (i32.const 8)
                  )
                 )
                )
               )
               (i64.store offset=320
                (get_local $24)
                (i64.load offset=72
                 (get_local $24)
                )
               )
               (i32.store offset=72
                (get_local $24)
                (i32.const 0)
               )
               (i32.store offset=76
                (get_local $24)
                (i32.const 0)
               )
               (i32.store
                (get_local $18)
                (i32.const 0)
               )
               (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
                (i32.add
                 (get_local $24)
                 (i32.const 368)
                )
                (tee_local $18
                 (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
                  (i32.add
                   (get_local $24)
                   (i32.const 104)
                  )
                  (i32.add
                   (get_local $24)
                   (i32.const 88)
                  )
                  (get_local $6)
                  (get_local $21)
                  (i32.add
                   (get_local $24)
                   (i32.const 288)
                  )
                 )
                )
               )
               (call $send_inline
                (tee_local $5
                 (i32.load offset=368
                  (get_local $24)
                 )
                )
                (i32.sub
                 (i32.load offset=372
                  (get_local $24)
                 )
                 (get_local $5)
                )
               )
               (block $label$108
                (br_if $label$108
                 (i32.eqz
                  (tee_local $5
                   (i32.load offset=368
                    (get_local $24)
                   )
                  )
                 )
                )
                (i32.store offset=372
                 (get_local $24)
                 (get_local $5)
                )
                (call $_ZdlPv
                 (get_local $5)
                )
               )
               (block $label$109
                (br_if $label$109
                 (i32.eqz
                  (tee_local $5
                   (i32.load offset=28
                    (get_local $18)
                   )
                  )
                 )
                )
                (i32.store
                 (i32.add
                  (get_local $18)
                  (i32.const 32)
                 )
                 (get_local $5)
                )
                (call $_ZdlPv
                 (get_local $5)
                )
               )
               (block $label$110
                (br_if $label$110
                 (i32.eqz
                  (tee_local $5
                   (i32.load offset=16
                    (get_local $18)
                   )
                  )
                 )
                )
                (i32.store
                 (i32.add
                  (get_local $18)
                  (i32.const 20)
                 )
                 (get_local $5)
                )
                (call $_ZdlPv
                 (get_local $5)
                )
               )
               (block $label$111
                (br_if $label$111
                 (i32.eqz
                  (i32.and
                   (i32.load8_u
                    (i32.add
                     (get_local $24)
                     (i32.const 320)
                    )
                   )
                   (i32.const 1)
                  )
                 )
                )
                (call $_ZdlPv
                 (i32.load
                  (i32.add
                   (get_local $24)
                   (i32.const 328)
                  )
                 )
                )
               )
               (block $label$112
                (br_if $label$112
                 (i32.eqz
                  (i32.and
                   (i32.load8_u offset=72
                    (get_local $24)
                   )
                   (i32.const 1)
                  )
                 )
                )
                (call $_ZdlPv
                 (i32.load
                  (i32.add
                   (get_local $24)
                   (i32.const 80)
                  )
                 )
                )
               )
               (set_local $23
                (i64.load
                 (get_local $0)
                )
               )
               (set_local $20
                (i64.const 0)
               )
               (set_local $19
                (i64.const 59)
               )
               (set_local $18
                (i32.const 176)
               )
               (set_local $21
                (i64.const 0)
               )
               (loop $label$113
                (block $label$114
                 (block $label$115
                  (block $label$116
                   (block $label$117
                    (block $label$118
                     (br_if $label$118
                      (i64.gt_u
                       (get_local $20)
                       (i64.const 5)
                      )
                     )
                     (br_if $label$117
                      (i32.gt_u
                       (i32.and
                        (i32.add
                         (tee_local $5
                          (i32.load8_s
                           (get_local $18)
                          )
                         )
                         (i32.const -97)
                        )
                        (i32.const 255)
                       )
                       (i32.const 25)
                      )
                     )
                     (set_local $5
                      (i32.add
                       (get_local $5)
                       (i32.const 165)
                      )
                     )
                     (br $label$116)
                    )
                    (set_local $22
                     (i64.const 0)
                    )
                    (br_if $label$115
                     (i64.le_u
                      (get_local $20)
                      (i64.const 11)
                     )
                    )
                    (br $label$114)
                   )
                   (set_local $5
                    (select
                     (i32.add
                      (get_local $5)
                      (i32.const 208)
                     )
                     (i32.const 0)
                     (i32.lt_u
                      (i32.and
                       (i32.add
                        (get_local $5)
                        (i32.const -49)
                       )
                       (i32.const 255)
                      )
                      (i32.const 5)
                     )
                    )
                   )
                  )
                  (set_local $22
                   (i64.shr_s
                    (i64.shl
                     (i64.extend_u/i32
                      (get_local $5)
                     )
                     (i64.const 56)
                    )
                    (i64.const 56)
                   )
                  )
                 )
                 (set_local $22
                  (i64.shl
                   (i64.and
                    (get_local $22)
                    (i64.const 31)
                   )
                   (i64.and
                    (get_local $19)
                    (i64.const 4294967295)
                   )
                  )
                 )
                )
                (set_local $18
                 (i32.add
                  (get_local $18)
                  (i32.const 1)
                 )
                )
                (set_local $20
                 (i64.add
                  (get_local $20)
                  (i64.const 1)
                 )
                )
                (set_local $21
                 (i64.or
                  (get_local $22)
                  (get_local $21)
                 )
                )
                (br_if $label$113
                 (i64.ne
                  (tee_local $19
                   (i64.add
                    (get_local $19)
                    (i64.const -5)
                   )
                  )
                  (i64.const -6)
                 )
                )
               )
               (i64.store offset=96
                (get_local $24)
                (get_local $21)
               )
               (i64.store offset=88
                (get_local $24)
                (get_local $23)
               )
               (set_local $23
                (i64.load
                 (i32.add
                  (get_local $3)
                  (i32.const 16)
                 )
                )
               )
               (set_local $20
                (i64.const 0)
               )
               (set_local $19
                (i64.const 59)
               )
               (set_local $18
                (i32.const 624)
               )
               (set_local $21
                (i64.const 0)
               )
               (loop $label$119
                (block $label$120
                 (block $label$121
                  (block $label$122
                   (block $label$123
                    (block $label$124
                     (br_if $label$124
                      (i64.gt_u
                       (get_local $20)
                       (i64.const 7)
                      )
                     )
                     (br_if $label$123
                      (i32.gt_u
                       (i32.and
                        (i32.add
                         (tee_local $5
                          (i32.load8_s
                           (get_local $18)
                          )
                         )
                         (i32.const -97)
                        )
                        (i32.const 255)
                       )
                       (i32.const 25)
                      )
                     )
                     (set_local $5
                      (i32.add
                       (get_local $5)
                       (i32.const 165)
                      )
                     )
                     (br $label$122)
                    )
                    (set_local $22
                     (i64.const 0)
                    )
                    (br_if $label$121
                     (i64.le_u
                      (get_local $20)
                      (i64.const 11)
                     )
                    )
                    (br $label$120)
                   )
                   (set_local $5
                    (select
                     (i32.add
                      (get_local $5)
                      (i32.const 208)
                     )
                     (i32.const 0)
                     (i32.lt_u
                      (i32.and
                       (i32.add
                        (get_local $5)
                        (i32.const -49)
                       )
                       (i32.const 255)
                      )
                      (i32.const 5)
                     )
                    )
                   )
                  )
                  (set_local $22
                   (i64.shr_s
                    (i64.shl
                     (i64.extend_u/i32
                      (get_local $5)
                     )
                     (i64.const 56)
                    )
                    (i64.const 56)
                   )
                  )
                 )
                 (set_local $22
                  (i64.shl
                   (i64.and
                    (get_local $22)
                    (i64.const 31)
                   )
                   (i64.and
                    (get_local $19)
                    (i64.const 4294967295)
                   )
                  )
                 )
                )
                (set_local $18
                 (i32.add
                  (get_local $18)
                  (i32.const 1)
                 )
                )
                (set_local $20
                 (i64.add
                  (get_local $20)
                  (i64.const 1)
                 )
                )
                (set_local $21
                 (i64.or
                  (get_local $22)
                  (get_local $21)
                 )
                )
                (br_if $label$119
                 (i64.ne
                  (tee_local $19
                   (i64.add
                    (get_local $19)
                    (i64.const -5)
                   )
                  )
                  (i64.const -6)
                 )
                )
               )
               (i32.store
                (i32.add
                 (get_local $24)
                 (i32.const 80)
                )
                (i32.const 0)
               )
               (i64.store offset=72
                (get_local $24)
                (i64.const 0)
               )
               (br_if $label$17
                (i32.ge_u
                 (tee_local $18
                  (call $strlen
                   (i32.const 640)
                  )
                 )
                 (i32.const -16)
                )
               )
               (br_if $label$26
                (i32.ge_u
                 (get_local $18)
                 (i32.const 11)
                )
               )
               (i32.store8 offset=72
                (get_local $24)
                (i32.shl
                 (get_local $18)
                 (i32.const 1)
                )
               )
               (set_local $5
                (i32.or
                 (i32.add
                  (get_local $24)
                  (i32.const 72)
                 )
                 (i32.const 1)
                )
               )
               (br_if $label$25
                (get_local $18)
               )
               (br $label$24)
              )
              (set_local $5
               (call $_Znwj
                (tee_local $4
                 (i32.and
                  (i32.add
                   (get_local $18)
                   (i32.const 16)
                  )
                  (i32.const -16)
                 )
                )
               )
              )
              (i32.store offset=88
               (get_local $24)
               (i32.or
                (get_local $4)
                (i32.const 1)
               )
              )
              (i32.store offset=96
               (get_local $24)
               (get_local $5)
              )
              (i32.store offset=92
               (get_local $24)
               (get_local $18)
              )
             )
             (drop
              (call $memcpy
               (get_local $5)
               (i32.const 640)
               (get_local $18)
              )
             )
            )
            (i32.store8
             (i32.add
              (get_local $5)
              (get_local $18)
             )
             (i32.const 0)
            )
            (set_local $20
             (i64.load
              (i32.add
               (get_local $7)
               (i32.const 8)
              )
             )
            )
            (i64.store
             (i32.add
              (get_local $24)
              (i32.const 312)
             )
             (get_local $11)
            )
            (i64.store align=4
             (i32.add
              (get_local $24)
              (i32.const 324)
             )
             (i64.load offset=92 align=4
              (get_local $24)
             )
            )
            (i64.store offset=288
             (get_local $24)
             (i64.load
              (get_local $0)
             )
            )
            (i64.store offset=296
             (get_local $24)
             (get_local $20)
            )
            (i64.store offset=304
             (get_local $24)
             (get_local $10)
            )
            (i32.store offset=320
             (get_local $24)
             (i32.load offset=88
              (get_local $24)
             )
            )
            (i32.store offset=88
             (get_local $24)
             (i32.const 0)
            )
            (i32.store offset=92
             (get_local $24)
             (i32.const 0)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $24)
               (i32.const 88)
              )
              (i32.const 8)
             )
             (i32.const 0)
            )
            (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
             (i32.add
              (get_local $24)
              (i32.const 216)
             )
             (tee_local $18
              (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
               (i32.add
                (get_local $24)
                (i32.const 104)
               )
               (i32.add
                (get_local $24)
                (i32.const 232)
               )
               (get_local $23)
               (get_local $21)
               (i32.add
                (get_local $24)
                (i32.const 288)
               )
              )
             )
            )
            (call $send_inline
             (tee_local $5
              (i32.load offset=216
               (get_local $24)
              )
             )
             (i32.sub
              (i32.load offset=220
               (get_local $24)
              )
              (get_local $5)
             )
            )
            (block $label$125
             (br_if $label$125
              (i32.eqz
               (tee_local $5
                (i32.load offset=216
                 (get_local $24)
                )
               )
              )
             )
             (i32.store offset=220
              (get_local $24)
              (get_local $5)
             )
             (call $_ZdlPv
              (get_local $5)
             )
            )
            (block $label$126
             (br_if $label$126
              (i32.eqz
               (tee_local $5
                (i32.load offset=28
                 (get_local $18)
                )
               )
              )
             )
             (i32.store
              (i32.add
               (get_local $18)
               (i32.const 32)
              )
              (get_local $5)
             )
             (call $_ZdlPv
              (get_local $5)
             )
            )
            (block $label$127
             (br_if $label$127
              (i32.eqz
               (tee_local $5
                (i32.load offset=16
                 (get_local $18)
                )
               )
              )
             )
             (i32.store
              (i32.add
               (get_local $18)
               (i32.const 20)
              )
              (get_local $5)
             )
             (call $_ZdlPv
              (get_local $5)
             )
            )
            (block $label$128
             (br_if $label$128
              (i32.eqz
               (i32.and
                (i32.load8_u
                 (i32.add
                  (get_local $24)
                  (i32.const 320)
                 )
                )
                (i32.const 1)
               )
              )
             )
             (call $_ZdlPv
              (i32.load
               (i32.add
                (get_local $24)
                (i32.const 328)
               )
              )
             )
            )
            (block $label$129
             (br_if $label$129
              (i32.eqz
               (i32.and
                (i32.load8_u offset=88
                 (get_local $24)
                )
                (i32.const 1)
               )
              )
             )
             (call $_ZdlPv
              (i32.load
               (i32.add
                (get_local $24)
                (i32.const 96)
               )
              )
             )
            )
            (call $eosio_assert
             (get_local $8)
             (i32.const 736)
            )
            (call $eosio_assert
             (i32.eq
              (i32.load offset=68
               (get_local $7)
              )
              (i32.add
               (get_local $24)
               (i32.const 248)
              )
             )
             (i32.const 784)
            )
            (call $eosio_assert
             (i64.eq
              (i64.load offset=248
               (get_local $24)
              )
              (call $current_receiver)
             )
             (i32.const 832)
            )
            (f64.store offset=88
             (get_local $24)
             (f64.div
              (f64.convert_s/i64
               (tee_local $20
                (i64.load
                 (tee_local $18
                  (i32.add
                   (get_local $7)
                   (i32.const 40)
                  )
                 )
                )
               )
              )
              (f64.convert_s/i64
               (tee_local $22
                (i64.load
                 (tee_local $5
                  (i32.add
                   (get_local $7)
                   (i32.const 16)
                  )
                 )
                )
               )
              )
             )
            )
            (i64.store
             (get_local $5)
             (i64.sub
              (get_local $22)
              (get_local $10)
             )
            )
            (i64.store
             (get_local $18)
             (i64.sub
              (get_local $20)
              (get_local $2)
             )
            )
            (set_local $20
             (i64.load
              (get_local $7)
             )
            )
            (call $eosio_assert
             (i32.const 1)
             (i32.const 896)
            )
            (i32.store offset=112
             (get_local $24)
             (i32.add
              (i32.add
               (get_local $24)
               (i32.const 288)
              )
              (i32.const 68)
             )
            )
            (i32.store offset=108
             (get_local $24)
             (i32.add
              (get_local $24)
              (i32.const 288)
             )
            )
            (i32.store offset=104
             (get_local $24)
             (i32.add
              (get_local $24)
              (i32.const 288)
             )
            )
            (drop
             (call $_ZlsIN5eosio10datastreamIPcEEERT_S5_RKN12eosotcbackup5orderE
              (i32.add
               (get_local $24)
               (i32.const 104)
              )
              (get_local $7)
             )
            )
            (call $db_update_i64
             (i32.load offset=72
              (get_local $7)
             )
             (i64.const 0)
             (i32.add
              (get_local $24)
              (i32.const 288)
             )
             (i32.const 68)
            )
            (block $label$130
             (br_if $label$130
              (i64.lt_u
               (get_local $20)
               (i64.load
                (tee_local $0
                 (i32.add
                  (i32.add
                   (get_local $24)
                   (i32.const 248)
                  )
                  (i32.const 16)
                 )
                )
               )
              )
             )
             (i64.store
              (get_local $0)
              (select
               (i64.const -2)
               (i64.add
                (get_local $20)
                (i64.const 1)
               )
               (i64.gt_u
                (get_local $20)
                (i64.const -3)
               )
              )
             )
            )
            (f64.store offset=232
             (get_local $24)
             (f64.div
              (f64.convert_s/i64
               (i64.load
                (get_local $18)
               )
              )
              (f64.convert_s/i64
               (i64.load
                (get_local $5)
               )
              )
             )
            )
            (br_if $label$23
             (i32.eqz
              (call $memcmp
               (i32.add
                (get_local $24)
                (i32.const 88)
               )
               (i32.add
                (get_local $24)
                (i32.const 232)
               )
               (i32.const 8)
              )
             )
            )
            (block $label$131
             (br_if $label$131
              (i32.gt_s
               (tee_local $18
                (i32.load offset=76
                 (get_local $7)
                )
               )
               (i32.const -1)
              )
             )
             (i32.store
              (i32.add
               (get_local $7)
               (i32.const 76)
              )
              (tee_local $18
               (call $db_idx_double_find_primary
                (i64.load offset=248
                 (get_local $24)
                )
                (i64.load
                 (i32.add
                  (get_local $24)
                  (i32.const 256)
                 )
                )
                (i64.const -6497942746098040832)
                (i32.add
                 (get_local $24)
                 (i32.const 216)
                )
                (get_local $20)
               )
              )
             )
            )
            (call $db_idx_double_update
             (get_local $18)
             (i64.const 0)
             (i32.add
              (get_local $24)
              (i32.const 232)
             )
            )
            (br_if $label$22
             (tee_local $7
              (i32.load offset=272
               (get_local $24)
              )
             )
            )
            (br $label$21)
           )
           (set_local $5
            (call $_Znwj
             (tee_local $4
              (i32.and
               (i32.add
                (get_local $18)
                (i32.const 16)
               )
               (i32.const -16)
              )
             )
            )
           )
           (i32.store offset=72
            (get_local $24)
            (i32.or
             (get_local $4)
             (i32.const 1)
            )
           )
           (i32.store offset=80
            (get_local $24)
            (get_local $5)
           )
           (i32.store offset=76
            (get_local $24)
            (get_local $18)
           )
          )
          (drop
           (call $memcpy
            (get_local $5)
            (i32.const 640)
            (get_local $18)
           )
          )
         )
         (i32.store8
          (i32.add
           (get_local $5)
           (get_local $18)
          )
          (i32.const 0)
         )
         (set_local $20
          (i64.load
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $24)
           (i32.const 308)
          )
          (i32.load offset=220
           (get_local $24)
          )
         )
         (i64.store offset=296
          (get_local $24)
          (get_local $20)
         )
         (i32.store
          (i32.add
           (get_local $24)
           (i32.const 312)
          )
          (i32.load
           (i32.add
            (i32.add
             (get_local $24)
             (i32.const 216)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $24)
           (i32.const 316)
          )
          (i32.load
           (i32.add
            (get_local $24)
            (i32.const 228)
           )
          )
         )
         (i64.store offset=288
          (get_local $24)
          (i64.load
           (get_local $0)
          )
         )
         (i32.store offset=304
          (get_local $24)
          (i32.load offset=216
           (get_local $24)
          )
         )
         (i32.store
          (i32.add
           (get_local $24)
           (i32.const 328)
          )
          (i32.load
           (tee_local $18
            (i32.add
             (i32.add
              (get_local $24)
              (i32.const 72)
             )
             (i32.const 8)
            )
           )
          )
         )
         (i64.store offset=320
          (get_local $24)
          (i64.load offset=72
           (get_local $24)
          )
         )
         (i32.store offset=72
          (get_local $24)
          (i32.const 0)
         )
         (i32.store offset=76
          (get_local $24)
          (i32.const 0)
         )
         (i32.store
          (get_local $18)
          (i32.const 0)
         )
         (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
          (i32.add
           (get_local $24)
           (i32.const 368)
          )
          (tee_local $18
           (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
            (i32.add
             (get_local $24)
             (i32.const 104)
            )
            (i32.add
             (get_local $24)
             (i32.const 88)
            )
            (get_local $23)
            (get_local $21)
            (i32.add
             (get_local $24)
             (i32.const 288)
            )
           )
          )
         )
         (call $send_inline
          (tee_local $5
           (i32.load offset=368
            (get_local $24)
           )
          )
          (i32.sub
           (i32.load offset=372
            (get_local $24)
           )
           (get_local $5)
          )
         )
         (block $label$132
          (br_if $label$132
           (i32.eqz
            (tee_local $5
             (i32.load offset=368
              (get_local $24)
             )
            )
           )
          )
          (i32.store offset=372
           (get_local $24)
           (get_local $5)
          )
          (call $_ZdlPv
           (get_local $5)
          )
         )
         (block $label$133
          (br_if $label$133
           (i32.eqz
            (tee_local $5
             (i32.load offset=28
              (get_local $18)
             )
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $18)
            (i32.const 32)
           )
           (get_local $5)
          )
          (call $_ZdlPv
           (get_local $5)
          )
         )
         (block $label$134
          (br_if $label$134
           (i32.eqz
            (tee_local $5
             (i32.load offset=16
              (get_local $18)
             )
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $18)
            (i32.const 20)
           )
           (get_local $5)
          )
          (call $_ZdlPv
           (get_local $5)
          )
         )
         (block $label$135
          (br_if $label$135
           (i32.eqz
            (i32.and
             (i32.load8_u
              (i32.add
               (get_local $24)
               (i32.const 320)
              )
             )
             (i32.const 1)
            )
           )
          )
          (call $_ZdlPv
           (i32.load
            (i32.add
             (get_local $24)
             (i32.const 328)
            )
           )
          )
         )
         (block $label$136
          (br_if $label$136
           (i32.eqz
            (i32.and
             (i32.load8_u offset=72
              (get_local $24)
             )
             (i32.const 1)
            )
           )
          )
          (call $_ZdlPv
           (i32.load
            (i32.add
             (get_local $24)
             (i32.const 80)
            )
           )
          )
         )
         (call $eosio_assert
          (get_local $8)
          (i32.const 656)
         )
         (call $eosio_assert
          (get_local $8)
          (i32.const 704)
         )
         (block $label$137
          (br_if $label$137
           (i32.lt_s
            (tee_local $18
             (call $db_next_i64
              (i32.load offset=72
               (get_local $7)
              )
              (i32.add
               (get_local $24)
               (i32.const 288)
              )
             )
            )
            (i32.const 0)
           )
          )
          (drop
           (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
            (i32.add
             (get_local $24)
             (i32.const 248)
            )
            (get_local $18)
           )
          )
         )
         (call $_ZN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE5eraseERKS2_
          (i32.add
           (get_local $24)
           (i32.const 248)
          )
          (get_local $7)
         )
        )
        (br_if $label$21
         (i32.eqz
          (tee_local $7
           (i32.load offset=272
            (get_local $24)
           )
          )
         )
        )
       )
       (block $label$138
        (block $label$139
         (br_if $label$139
          (i32.eq
           (tee_local $18
            (i32.load
             (tee_local $0
              (i32.add
               (get_local $24)
               (i32.const 276)
              )
             )
            )
           )
           (get_local $7)
          )
         )
         (loop $label$140
          (set_local $5
           (i32.load
            (tee_local $18
             (i32.add
              (get_local $18)
              (i32.const -24)
             )
            )
           )
          )
          (i32.store
           (get_local $18)
           (i32.const 0)
          )
          (block $label$141
           (br_if $label$141
            (i32.eqz
             (get_local $5)
            )
           )
           (call $_ZdlPv
            (get_local $5)
           )
          )
          (br_if $label$140
           (i32.ne
            (get_local $7)
            (get_local $18)
           )
          )
         )
         (set_local $18
          (i32.load
           (i32.add
            (get_local $24)
            (i32.const 272)
           )
          )
         )
         (br $label$138)
        )
        (set_local $18
         (get_local $7)
        )
       )
       (i32.store
        (get_local $0)
        (get_local $7)
       )
       (call $_ZdlPv
        (get_local $18)
       )
      )
      (i32.store offset=4
       (i32.const 0)
       (i32.add
        (get_local $24)
        (i32.const 384)
       )
      )
      (return)
     )
     (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
      (i32.add
       (get_local $24)
       (i32.const 88)
      )
     )
     (unreachable)
    )
    (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
     (i32.add
      (get_local $24)
      (i32.const 72)
     )
    )
    (unreachable)
   )
   (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $24)
     (i32.const 88)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $24)
    (i32.const 72)
   )
  )
  (unreachable)
 )
 (func $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $3)
  )
  (i64.store
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (tee_local $8
    (call $_Znwj
     (i32.const 16)
    )
   )
  )
  (i32.store
   (tee_local $6
    (i32.add
     (get_local $0)
     (i32.const 20)
    )
   )
   (get_local $8)
  )
  (i32.store
   (get_local $5)
   (tee_local $7
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $8)
   (i64.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $6)
   (get_local $7)
  )
  (i32.store offset=28
   (get_local $0)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
   (i32.const 0)
  )
  (set_local $8
   (i32.add
    (tee_local $1
     (select
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 36)
       )
      )
      (i32.shr_u
       (tee_local $8
        (i32.load8_u offset=32
         (get_local $4)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $8)
       (i32.const 1)
      )
     )
    )
    (i32.const 32)
   )
  )
  (set_local $2
   (i64.extend_u/i32
    (get_local $1)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
  )
  (loop $label$0
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $2
      (i64.shr_u
       (get_local $2)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (get_local $8)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (get_local $8)
    )
    (set_local $1
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
    )
    (set_local $8
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 28)
      )
     )
    )
    (br $label$1)
   )
   (set_local $1
    (i32.const 0)
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $9)
   (get_local $8)
  )
  (i32.store
   (get_local $9)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $9)
   (get_local $9)
  )
  (i32.store offset=24
   (get_local $9)
   (get_local $4)
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=68
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 960)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 1008)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 1072)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$6
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$6
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=72
    (get_local $1)
   )
  )
  (block $label$8
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $7
       (i32.load offset=76
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (br_if $label$8
     (i32.lt_s
      (tee_local $7
       (call $db_idx_double_find_primary
        (i64.load
         (get_local $0)
        )
        (i64.load offset=8
         (get_local $0)
        )
        (i64.const -6497942746098040832)
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (i64.load
         (get_local $1)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (call $db_idx_double_remove
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 208)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $5
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $2
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $eosio_assert
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $6)
     )
     (get_local $5)
    )
    (i32.const 208)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $3)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (i32.add
     (i32.load
      (get_local $6)
     )
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN12eosotcbackup8retrieveEyyN5eosio14extended_assetE (type $FUNCSIG$vijji) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $18
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 272)
    )
   )
  )
  (i64.store offset=232
   (get_local $18)
   (i64.const -1)
  )
  (i32.store offset=240
   (get_local $18)
   (i32.const 0)
  )
  (i64.store offset=216
   (get_local $18)
   (tee_local $16
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=224
   (get_local $18)
   (tee_local $14
    (i64.load offset=16
     (get_local $3)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 216)
    )
    (i32.const 28)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 216)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i32.store8 offset=252
   (get_local $18)
   (i32.const 0)
  )
  (set_local $13
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_find_i64
       (get_local $16)
       (get_local $14)
       (i64.const -6497942746098040832)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=68
      (tee_local $13
       (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $18)
         (i32.const 216)
        )
        (get_local $3)
       )
      )
     )
     (i32.add
      (get_local $18)
      (i32.const 216)
     )
    )
    (i32.const 496)
   )
  )
  (call $eosio_assert
   (tee_local $4
    (i32.ne
     (get_local $13)
     (i32.const 0)
    )
   )
   (i32.const 560)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=8
     (get_local $13)
    )
    (get_local $1)
   )
   (i32.const 1136)
  )
  (set_local $2
   (i64.load offset=8
    (get_local $13)
   )
  )
  (set_local $16
   (i64.load
    (get_local $13)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 32)
   )
   (i32.load
    (i32.add
     (get_local $13)
     (i32.const 32)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $13)
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (get_local $13)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $13)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 36)
   )
   (i32.load
    (i32.add
     (get_local $13)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=144
   (get_local $18)
   (get_local $16)
  )
  (i64.store offset=152
   (get_local $18)
   (get_local $2)
  )
  (i32.store offset=160
   (get_local $18)
   (i32.load offset=16
    (get_local $13)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 56)
   )
   (i64.load
    (i32.add
     (get_local $13)
     (i32.const 56)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $18)
     (i32.const 144)
    )
    (i32.const 48)
   )
   (i64.load
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
   )
  )
  (i64.store offset=184
   (get_local $18)
   (i64.load offset=40
    (get_local $13)
   )
  )
  (i64.store32 offset=208
   (get_local $18)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (set_local $8
   (i32.add
    (get_local $18)
    (i32.const 208)
   )
  )
  (set_local $7
   (i32.add
    (get_local $18)
    (i32.const 184)
   )
  )
  (set_local $6
   (i32.add
    (get_local $18)
    (i32.const 160)
   )
  )
  (set_local $5
   (i32.add
    (get_local $18)
    (i32.const 152)
   )
  )
  (set_local $9
   (i64.load
    (get_local $0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $3
   (i32.const 176)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i64.gt_u
          (get_local $2)
          (i64.const 5)
         )
        )
        (br_if $label$5
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $10
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $10
         (i32.add
          (get_local $10)
          (i32.const 165)
         )
        )
        (br $label$4)
       )
       (set_local $16
        (i64.const 0)
       )
       (br_if $label$3
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$2)
      )
      (set_local $10
       (select
        (i32.add
         (get_local $10)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $10)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $16
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $10)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $16
     (i64.shl
      (i64.and
       (get_local $16)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $16)
     (get_local $15)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $3
   (i32.const 192)
  )
  (set_local $17
   (i64.const 0)
  )
  (loop $label$7
   (block $label$8
    (block $label$9
     (block $label$10
      (block $label$11
       (block $label$12
        (br_if $label$12
         (i64.gt_u
          (get_local $2)
          (i64.const 6)
         )
        )
        (br_if $label$11
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $10
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $10
         (i32.add
          (get_local $10)
          (i32.const 165)
         )
        )
        (br $label$10)
       )
       (set_local $16
        (i64.const 0)
       )
       (br_if $label$9
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$8)
      )
      (set_local $10
       (select
        (i32.add
         (get_local $10)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $10)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $16
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $10)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $16
     (i64.shl
      (i64.and
       (get_local $16)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $17
    (i64.or
     (get_local $16)
     (get_local $17)
    )
   )
   (br_if $label$7
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (tee_local $10
    (i32.add
     (get_local $18)
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $18)
   (get_local $17)
  )
  (i64.store offset=24
   (get_local $18)
   (get_local $9)
  )
  (i64.store offset=40
   (get_local $18)
   (i64.const 0)
  )
  (i64.store
   (tee_local $3
    (call $_Znwj
     (i32.const 16)
    )
   )
   (get_local $9)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $15)
  )
  (i32.store
   (tee_local $11
    (i32.add
     (get_local $18)
     (i32.const 56)
    )
   )
   (i32.const 0)
  )
  (i32.store
   (get_local $10)
   (tee_local $12
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $18)
    (i32.const 44)
   )
   (get_local $12)
  )
  (i32.store offset=40
   (get_local $18)
   (get_local $3)
  )
  (i32.store offset=52
   (get_local $18)
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $18)
    (i32.const 60)
   )
   (i32.const 0)
  )
  (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
   (i32.add
    (get_local $18)
    (i32.const 52)
   )
   (i32.const 68)
  )
  (set_local $3
   (i32.load
    (get_local $11)
   )
  )
  (i32.store offset=132
   (get_local $18)
   (tee_local $10
    (i32.load offset=52
     (get_local $18)
    )
   )
  )
  (i32.store offset=128
   (get_local $18)
   (get_local $10)
  )
  (i32.store offset=136
   (get_local $18)
   (get_local $3)
  )
  (i32.store offset=72
   (get_local $18)
   (i32.add
    (get_local $18)
    (i32.const 128)
   )
  )
  (i32.store offset=92
   (get_local $18)
   (get_local $5)
  )
  (i32.store offset=96
   (get_local $18)
   (get_local $6)
  )
  (i32.store offset=100
   (get_local $18)
   (get_local $7)
  )
  (i32.store offset=104
   (get_local $18)
   (get_local $8)
  )
  (i32.store offset=88
   (get_local $18)
   (i32.add
    (get_local $18)
    (i32.const 144)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKN5eosio14extended_assetESA_RKmEEEZNS7_lsINS7_10datastreamIPcEEN12eosotcbackup3recELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3ELj4EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE
   (i32.add
    (get_local $18)
    (i32.const 88)
   )
   (i32.add
    (get_local $18)
    (i32.const 72)
   )
  )
  (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
   (i32.add
    (get_local $18)
    (i32.const 88)
   )
   (i32.add
    (get_local $18)
    (i32.const 24)
   )
  )
  (call $send_inline
   (tee_local $3
    (i32.load offset=88
     (get_local $18)
    )
   )
   (i32.sub
    (i32.load offset=92
     (get_local $18)
    )
    (get_local $3)
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (tee_local $3
      (i32.load offset=88
       (get_local $18)
      )
     )
    )
   )
   (i32.store offset=92
    (get_local $18)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (tee_local $3
      (i32.load offset=52
       (get_local $18)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 56)
    )
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.eqz
     (tee_local $3
      (i32.load offset=40
       (get_local $18)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 44)
    )
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $18)
    (i32.const 136)
   )
   (i64.load
    (i32.add
     (get_local $13)
     (i32.const 24)
    )
   )
  )
  (i64.store offset=128
   (get_local $18)
   (i64.load offset=16
    (get_local $13)
   )
  )
  (set_local $17
   (i64.load
    (get_local $0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $3
   (i32.const 176)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$16
   (block $label$17
    (block $label$18
     (block $label$19
      (block $label$20
       (block $label$21
        (br_if $label$21
         (i64.gt_u
          (get_local $2)
          (i64.const 5)
         )
        )
        (br_if $label$20
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $10
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $10
         (i32.add
          (get_local $10)
          (i32.const 165)
         )
        )
        (br $label$19)
       )
       (set_local $16
        (i64.const 0)
       )
       (br_if $label$18
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$17)
      )
      (set_local $10
       (select
        (i32.add
         (get_local $10)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $10)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $16
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $10)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $16
     (i64.shl
      (i64.and
       (get_local $16)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $16)
     (get_local $15)
    )
   )
   (br_if $label$16
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=80
   (get_local $18)
   (get_local $15)
  )
  (i64.store offset=72
   (get_local $18)
   (get_local $17)
  )
  (set_local $17
   (i64.load
    (i32.add
     (get_local $13)
     (i32.const 32)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $3
   (i32.const 624)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$22
   (block $label$23
    (block $label$24
     (block $label$25
      (block $label$26
       (block $label$27
        (br_if $label$27
         (i64.gt_u
          (get_local $2)
          (i64.const 7)
         )
        )
        (br_if $label$26
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $10
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $10
         (i32.add
          (get_local $10)
          (i32.const 165)
         )
        )
        (br $label$25)
       )
       (set_local $16
        (i64.const 0)
       )
       (br_if $label$24
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$23)
      )
      (set_local $10
       (select
        (i32.add
         (get_local $10)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $10)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $16
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $10)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $16
     (i64.shl
      (i64.and
       (get_local $16)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $16)
     (get_local $15)
    )
   )
   (br_if $label$22
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $18)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $18)
   (i64.const 0)
  )
  (block $label$28
   (br_if $label$28
    (i32.ge_u
     (tee_local $3
      (call $strlen
       (i32.const 1152)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$29
    (block $label$30
     (block $label$31
      (br_if $label$31
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8 offset=8
       (get_local $18)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $10
       (i32.or
        (i32.add
         (get_local $18)
         (i32.const 8)
        )
        (i32.const 1)
       )
      )
      (br_if $label$30
       (get_local $3)
      )
      (br $label$29)
     )
     (set_local $10
      (call $_Znwj
       (tee_local $8
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store offset=8
      (get_local $18)
      (i32.or
       (get_local $8)
       (i32.const 1)
      )
     )
     (i32.store offset=16
      (get_local $18)
      (get_local $10)
     )
     (i32.store offset=12
      (get_local $18)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $10)
      (i32.const 1152)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $10)
     (get_local $3)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 44)
    )
    (i32.load offset=132
     (get_local $18)
    )
   )
   (i64.store offset=32
    (get_local $18)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 52)
    )
    (i32.load
     (i32.add
      (get_local $18)
      (i32.const 140)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 48)
    )
    (i32.load
     (i32.add
      (i32.add
       (get_local $18)
       (i32.const 128)
      )
      (i32.const 8)
     )
    )
   )
   (i64.store offset=24
    (get_local $18)
    (i64.load
     (get_local $0)
    )
   )
   (i32.store offset=40
    (get_local $18)
    (i32.load offset=128
     (get_local $18)
    )
   )
   (i32.store
    (i32.add
     (get_local $18)
     (i32.const 64)
    )
    (i32.load
     (tee_local $3
      (i32.add
       (i32.add
        (get_local $18)
        (i32.const 8)
       )
       (i32.const 8)
      )
     )
    )
   )
   (i64.store offset=56
    (get_local $18)
    (i64.load offset=8
     (get_local $18)
    )
   )
   (i32.store offset=8
    (get_local $18)
    (i32.const 0)
   )
   (i32.store offset=12
    (get_local $18)
    (i32.const 0)
   )
   (i32.store
    (get_local $3)
    (i32.const 0)
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $18)
     (i32.const 256)
    )
    (tee_local $3
     (call $_ZN5eosio6actionC2INSt3__15tupleIJyyNS_5assetENS2_12basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEEERKNS_16permission_levelEyyOT_
      (i32.add
       (get_local $18)
       (i32.const 88)
      )
      (i32.add
       (get_local $18)
       (i32.const 72)
      )
      (get_local $17)
      (get_local $15)
      (i32.add
       (get_local $18)
       (i32.const 24)
      )
     )
    )
   )
   (call $send_inline
    (tee_local $10
     (i32.load offset=256
      (get_local $18)
     )
    )
    (i32.sub
     (i32.load offset=260
      (get_local $18)
     )
     (get_local $10)
    )
   )
   (block $label$32
    (br_if $label$32
     (i32.eqz
      (tee_local $10
       (i32.load offset=256
        (get_local $18)
       )
      )
     )
    )
    (i32.store offset=260
     (get_local $18)
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$33
    (br_if $label$33
     (i32.eqz
      (tee_local $10
       (i32.load offset=28
        (get_local $3)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$34
    (br_if $label$34
     (i32.eqz
      (tee_local $10
       (i32.load offset=16
        (get_local $3)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $3)
      (i32.const 20)
     )
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$35
    (br_if $label$35
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $18)
         (i32.const 56)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $18)
       (i32.const 64)
      )
     )
    )
   )
   (block $label$36
    (br_if $label$36
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $18)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $18)
       (i32.const 16)
      )
     )
    )
   )
   (call $eosio_assert
    (get_local $4)
    (i32.const 656)
   )
   (call $eosio_assert
    (get_local $4)
    (i32.const 704)
   )
   (block $label$37
    (br_if $label$37
     (i32.lt_s
      (tee_local $3
       (call $db_next_i64
        (i32.load offset=72
         (get_local $13)
        )
        (i32.add
         (get_local $18)
         (i32.const 24)
        )
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $18)
       (i32.const 216)
      )
      (get_local $3)
     )
    )
   )
   (call $_ZN5eosio11multi_indexILy11948801327611510784EN12eosotcbackup5orderEJNS_10indexed_byILy4587891630098350080EN5boost11multi_index13const_mem_funIS2_dXadL_ZNKS2_9get_priceEvEEEEEEEE5eraseERKS2_
    (i32.add
     (get_local $18)
     (i32.const 216)
    )
    (get_local $13)
   )
   (block $label$38
    (br_if $label$38
     (i32.eqz
      (tee_local $13
       (i32.load offset=240
        (get_local $18)
       )
      )
     )
    )
    (block $label$39
     (block $label$40
      (br_if $label$40
       (i32.eq
        (tee_local $3
         (i32.load
          (tee_local $0
           (i32.add
            (get_local $18)
            (i32.const 244)
           )
          )
         )
        )
        (get_local $13)
       )
      )
      (loop $label$41
       (set_local $10
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $3)
        (i32.const 0)
       )
       (block $label$42
        (br_if $label$42
         (i32.eqz
          (get_local $10)
         )
        )
        (call $_ZdlPv
         (get_local $10)
        )
       )
       (br_if $label$41
        (i32.ne
         (get_local $13)
         (get_local $3)
        )
       )
      )
      (set_local $3
       (i32.load
        (i32.add
         (get_local $18)
         (i32.const 240)
        )
       )
      )
      (br $label$39)
     )
     (set_local $3
      (get_local $13)
     )
    )
    (i32.store
     (get_local $0)
     (get_local $13)
    )
    (call $_ZdlPv
     (get_local $3)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $18)
     (i32.const 272)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $18)
    (i32.const 8)
   )
  )
  (unreachable)
 )
 (func $_ZN12eosotcbackup8transferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_ZN12eosotcbackup10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $21
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 256)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
   (call $require_auth
    (get_local $1)
   )
   (set_local $14
    (i32.const 0)
   )
   (set_local $16
    (i32.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (tee_local $19
       (i64.add
        (tee_local $18
         (i64.load
          (get_local $3)
         )
        )
        (i64.const 4611686018427387903)
       )
      )
      (i64.const 9223372036854775806)
     )
    )
    (set_local $2
     (i64.shr_u
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 8)
     )
    )
    (set_local $17
     (i32.const 0)
    )
    (block $label$2
     (loop $label$3
      (br_if $label$2
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $2)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$4
       (br_if $label$4
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$5
        (br_if $label$2
         (i64.ne
          (i64.and
           (tee_local $2
            (i64.shr_u
             (get_local $2)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$5
         (i32.lt_s
          (tee_local $17
           (i32.add
            (get_local $17)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $16
       (i32.const 1)
      )
      (br_if $label$3
       (i32.lt_s
        (tee_local $17
         (i32.add
          (get_local $17)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$1)
     )
    )
    (set_local $16
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $16)
    (i32.const 1168)
   )
   (call $eosio_assert
    (tee_local $5
     (i64.gt_s
      (get_local $18)
      (i64.const 0)
     )
    )
    (i32.const 1200)
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
     (i32.add
      (get_local $21)
      (i32.const 240)
     )
     (get_local $4)
     (i32.const 0)
     (i32.const 3)
     (get_local $4)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.ne
      (tee_local $16
       (call $strlen
        (i32.const 1232)
       )
      )
      (select
       (i32.load offset=244
        (get_local $21)
       )
       (i32.shr_u
        (tee_local $17
         (i32.load8_u offset=240
          (get_local $21)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $17)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $14
     (i32.eqz
      (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
       (i32.add
        (get_local $21)
        (i32.const 240)
       )
       (i32.const 0)
       (i32.const -1)
       (i32.const 1232)
       (get_local $16)
      )
     )
    )
    (set_local $17
     (i32.load8_u offset=240
      (get_local $21)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (i32.and
       (get_local $17)
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=248
      (get_local $21)
     )
    )
   )
   (block $label$8
    (block $label$9
     (block $label$10
      (block $label$11
       (block $label$12
        (block $label$13
         (block $label$14
          (block $label$15
           (block $label$16
            (block $label$17
             (block $label$18
              (block $label$19
               (block $label$20
                (br_if $label$20
                 (i32.eqz
                  (get_local $14)
                 )
                )
                (drop
                 (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
                  (get_local $4)
                  (i32.const 0)
                  (i32.const 4)
                 )
                )
                (set_local $12
                 (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                  (get_local $4)
                  (i32.const 44)
                  (i32.const 0)
                 )
                )
                (set_local $9
                 (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                  (get_local $4)
                  (i32.const 46)
                  (i32.const 0)
                 )
                )
                (set_local $13
                 (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                  (get_local $4)
                  (i32.const 32)
                  (i32.const 0)
                 )
                )
                (call $eosio_assert
                 (i32.const 1)
                 (i32.const 224)
                )
                (set_local $2
                 (i64.const 5462355)
                )
                (set_local $17
                 (i32.const 0)
                )
                (loop $label$21
                 (br_if $label$19
                  (i32.gt_u
                   (i32.add
                    (i32.shl
                     (i32.wrap/i64
                      (get_local $2)
                     )
                     (i32.const 24)
                    )
                    (i32.const -1073741825)
                   )
                   (i32.const 452984830)
                  )
                 )
                 (block $label$22
                  (br_if $label$22
                   (i64.ne
                    (i64.and
                     (tee_local $2
                      (i64.shr_u
                       (get_local $2)
                       (i64.const 8)
                      )
                     )
                     (i64.const 255)
                    )
                    (i64.const 0)
                   )
                  )
                  (loop $label$23
                   (br_if $label$19
                    (i64.ne
                     (i64.and
                      (tee_local $2
                       (i64.shr_u
                        (get_local $2)
                        (i64.const 8)
                       )
                      )
                      (i64.const 255)
                     )
                     (i64.const 0)
                    )
                   )
                   (br_if $label$23
                    (i32.lt_s
                     (tee_local $17
                      (i32.add
                       (get_local $17)
                       (i32.const 1)
                      )
                     )
                     (i32.const 7)
                    )
                   )
                  )
                 )
                 (set_local $16
                  (i32.const 1)
                 )
                 (br_if $label$21
                  (i32.lt_s
                   (tee_local $17
                    (i32.add
                     (get_local $17)
                     (i32.const 1)
                    )
                   )
                   (i32.const 7)
                  )
                 )
                 (br $label$18)
                )
               )
               (set_local $16
                (i32.const 0)
               )
               (drop
                (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
                 (i32.add
                  (get_local $21)
                  (i32.const 240)
                 )
                 (get_local $4)
                 (i32.const 0)
                 (i32.const 4)
                 (get_local $4)
                )
               )
               (block $label$24
                (br_if $label$24
                 (i32.ne
                  (tee_local $14
                   (call $strlen
                    (i32.const 1344)
                   )
                  )
                  (select
                   (i32.load offset=244
                    (get_local $21)
                   )
                   (i32.shr_u
                    (tee_local $17
                     (i32.load8_u offset=240
                      (get_local $21)
                     )
                    )
                    (i32.const 1)
                   )
                   (i32.and
                    (get_local $17)
                    (i32.const 1)
                   )
                  )
                 )
                )
                (set_local $16
                 (i32.eqz
                  (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
                   (i32.add
                    (get_local $21)
                    (i32.const 240)
                   )
                   (i32.const 0)
                   (i32.const -1)
                   (i32.const 1344)
                   (get_local $14)
                  )
                 )
                )
                (set_local $17
                 (i32.load8_u offset=240
                  (get_local $21)
                 )
                )
               )
               (block $label$25
                (br_if $label$25
                 (i32.eqz
                  (i32.and
                   (get_local $17)
                   (i32.const 1)
                  )
                 )
                )
                (call $_ZdlPv
                 (i32.load offset=248
                  (get_local $21)
                 )
                )
               )
               (br_if $label$0
                (i32.eqz
                 (get_local $16)
                )
               )
               (drop
                (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
                 (get_local $4)
                 (i32.const 0)
                 (i32.const 5)
                )
               )
               (set_local $5
                (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                 (get_local $4)
                 (i32.const 44)
                 (i32.const 0)
                )
               )
               (set_local $9
                (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                 (get_local $4)
                 (i32.const 46)
                 (i32.const 0)
                )
               )
               (set_local $13
                (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
                 (get_local $4)
                 (i32.const 32)
                 (i32.const 0)
                )
               )
               (call $eosio_assert
                (i32.const 1)
                (i32.const 224)
               )
               (set_local $2
                (i64.const 5462355)
               )
               (set_local $17
                (i32.const 0)
               )
               (loop $label$26
                (br_if $label$17
                 (i32.gt_u
                  (i32.add
                   (i32.shl
                    (i32.wrap/i64
                     (get_local $2)
                    )
                    (i32.const 24)
                   )
                   (i32.const -1073741825)
                  )
                  (i32.const 452984830)
                 )
                )
                (block $label$27
                 (br_if $label$27
                  (i64.ne
                   (i64.and
                    (tee_local $2
                     (i64.shr_u
                      (get_local $2)
                      (i64.const 8)
                     )
                    )
                    (i64.const 255)
                   )
                   (i64.const 0)
                  )
                 )
                 (loop $label$28
                  (br_if $label$17
                   (i64.ne
                    (i64.and
                     (tee_local $2
                      (i64.shr_u
                       (get_local $2)
                       (i64.const 8)
                      )
                     )
                     (i64.const 255)
                    )
                    (i64.const 0)
                   )
                  )
                  (br_if $label$28
                   (i32.lt_s
                    (tee_local $17
                     (i32.add
                      (get_local $17)
                      (i32.const 1)
                     )
                    )
                    (i32.const 7)
                   )
                  )
                 )
                )
                (set_local $16
                 (i32.const 1)
                )
                (br_if $label$26
                 (i32.lt_s
                  (tee_local $17
                   (i32.add
                    (get_local $17)
                    (i32.const 1)
                   )
                  )
                  (i32.const 7)
                 )
                )
                (br $label$16)
               )
              )
              (set_local $16
               (i32.const 0)
              )
             )
             (call $eosio_assert
              (get_local $16)
              (i32.const 288)
             )
             (drop
              (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
               (i32.add
                (get_local $21)
                (i32.const 224)
               )
               (get_local $4)
               (i32.const 0)
               (get_local $13)
               (get_local $4)
              )
             )
             (block $label$29
              (block $label$30
               (br_if $label$30
                (tee_local $7
                 (i32.and
                  (tee_local $17
                   (i32.load8_u offset=224
                    (get_local $21)
                   )
                  )
                  (i32.const 1)
                 )
                )
               )
               (br_if $label$15
                (i32.eqz
                 (tee_local $16
                  (i32.shr_u
                   (get_local $17)
                   (i32.const 1)
                  )
                 )
                )
               )
               (set_local $17
                (i32.or
                 (i32.add
                  (get_local $21)
                  (i32.const 224)
                 )
                 (i32.const 1)
                )
               )
               (set_local $15
                (i64.const 0)
               )
               (loop $label$31
                (block $label$32
                 (br_if $label$32
                  (i32.gt_u
                   (i32.and
                    (i32.add
                     (tee_local $14
                      (i32.load8_u
                       (get_local $17)
                      )
                     )
                     (i32.const -48)
                    )
                    (i32.const 255)
                   )
                   (i32.const 9)
                  )
                 )
                 (set_local $15
                  (i64.add
                   (i64.add
                    (i64.mul
                     (get_local $15)
                     (i64.const 10)
                    )
                    (i64.shr_s
                     (i64.shl
                      (i64.extend_u/i32
                       (get_local $14)
                      )
                      (i64.const 56)
                     )
                     (i64.const 56)
                    )
                   )
                   (i64.const -48)
                  )
                 )
                )
                (set_local $17
                 (i32.add
                  (get_local $17)
                  (i32.const 1)
                 )
                )
                (br_if $label$31
                 (tee_local $16
                  (i32.add
                   (get_local $16)
                   (i32.const -1)
                  )
                 )
                )
                (br $label$29)
               )
              )
              (br_if $label$14
               (i32.eqz
                (tee_local $16
                 (i32.load offset=228
                  (get_local $21)
                 )
                )
               )
              )
              (set_local $17
               (i32.load
                (i32.add
                 (get_local $21)
                 (i32.const 232)
                )
               )
              )
              (set_local $15
               (i64.const 0)
              )
              (loop $label$33
               (block $label$34
                (br_if $label$34
                 (i32.gt_u
                  (i32.and
                   (i32.add
                    (tee_local $14
                     (i32.load8_u
                      (get_local $17)
                     )
                    )
                    (i32.const -48)
                   )
                   (i32.const 255)
                  )
                  (i32.const 9)
                 )
                )
                (set_local $15
                 (i64.add
                  (i64.add
                   (i64.mul
                    (get_local $15)
                    (i64.const 10)
                   )
                   (i64.shr_s
                    (i64.shl
                     (i64.extend_u/i32
                      (get_local $14)
                     )
                     (i64.const 56)
                    )
                    (i64.const 56)
                   )
                  )
                  (i64.const -48)
                 )
                )
               )
               (set_local $17
                (i32.add
                 (get_local $17)
                 (i32.const 1)
                )
               )
               (br_if $label$33
                (tee_local $16
                 (i32.add
                  (get_local $16)
                  (i32.const -1)
                 )
                )
               )
              )
             )
             (br_if $label$13
              (get_local $7)
             )
             (br $label$12)
            )
            (set_local $16
             (i32.const 0)
            )
           )
           (call $eosio_assert
            (get_local $16)
            (i32.const 288)
           )
           (drop
            (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
             (i32.add
              (get_local $21)
              (i32.const 160)
             )
             (get_local $4)
             (i32.const 0)
             (get_local $13)
             (get_local $4)
            )
           )
           (block $label$35
            (block $label$36
             (br_if $label$36
              (tee_local $12
               (i32.and
                (tee_local $17
                 (i32.load8_u offset=160
                  (get_local $21)
                 )
                )
                (i32.const 1)
               )
              )
             )
             (br_if $label$11
              (i32.eqz
               (tee_local $16
                (i32.shr_u
                 (get_local $17)
                 (i32.const 1)
                )
               )
              )
             )
             (set_local $17
              (i32.or
               (i32.add
                (get_local $21)
                (i32.const 160)
               )
               (i32.const 1)
              )
             )
             (set_local $15
              (i64.const 0)
             )
             (loop $label$37
              (block $label$38
               (br_if $label$38
                (i32.gt_u
                 (i32.and
                  (i32.add
                   (tee_local $14
                    (i32.load8_u
                     (get_local $17)
                    )
                   )
                   (i32.const -48)
                  )
                  (i32.const 255)
                 )
                 (i32.const 9)
                )
               )
               (set_local $15
                (i64.add
                 (i64.add
                  (i64.mul
                   (get_local $15)
                   (i64.const 10)
                  )
                  (i64.shr_s
                   (i64.shl
                    (i64.extend_u/i32
                     (get_local $14)
                    )
                    (i64.const 56)
                   )
                   (i64.const 56)
                  )
                 )
                 (i64.const -48)
                )
               )
              )
              (set_local $17
               (i32.add
                (get_local $17)
                (i32.const 1)
               )
              )
              (br_if $label$37
               (tee_local $16
                (i32.add
                 (get_local $16)
                 (i32.const -1)
                )
               )
              )
              (br $label$35)
             )
            )
            (br_if $label$10
             (i32.eqz
              (tee_local $16
               (i32.load offset=164
                (get_local $21)
               )
              )
             )
            )
            (set_local $17
             (i32.load
              (i32.add
               (get_local $21)
               (i32.const 168)
              )
             )
            )
            (set_local $15
             (i64.const 0)
            )
            (loop $label$39
             (block $label$40
              (br_if $label$40
               (i32.gt_u
                (i32.and
                 (i32.add
                  (tee_local $14
                   (i32.load8_u
                    (get_local $17)
                   )
                  )
                  (i32.const -48)
                 )
                 (i32.const 255)
                )
                (i32.const 9)
               )
              )
              (set_local $15
               (i64.add
                (i64.add
                 (i64.mul
                  (get_local $15)
                  (i64.const 10)
                 )
                 (i64.shr_s
                  (i64.shl
                   (i64.extend_u/i32
                    (get_local $14)
                   )
                   (i64.const 56)
                  )
                  (i64.const 56)
                 )
                )
                (i64.const -48)
               )
              )
             )
             (set_local $17
              (i32.add
               (get_local $17)
               (i32.const 1)
              )
             )
             (br_if $label$39
              (tee_local $16
               (i32.add
                (get_local $16)
                (i32.const -1)
               )
              )
             )
            )
           )
           (br_if $label$9
            (get_local $12)
           )
           (br $label$8)
          )
          (set_local $15
           (i64.const 0)
          )
          (br $label$12)
         )
         (set_local $15
          (i64.const 0)
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $21)
           (i32.const 232)
          )
         )
        )
       )
       (set_local $17
        (i32.const -1)
       )
       (drop
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
         (i32.add
          (get_local $21)
          (i32.const 240)
         )
         (get_local $4)
         (i32.add
          (get_local $13)
          (i32.const 1)
         )
         (i32.add
          (get_local $13)
          (i32.xor
           (get_local $12)
           (i32.const -1)
          )
         )
         (get_local $4)
        )
       )
       (set_local $16
        (select
         (tee_local $8
          (i32.load offset=248
           (get_local $21)
          )
         )
         (i32.or
          (i32.add
           (get_local $21)
           (i32.const 240)
          )
          (i32.const 1)
         )
         (tee_local $7
          (i32.and
           (i32.load8_u offset=240
            (get_local $21)
           )
           (i32.const 1)
          )
         )
        )
       )
       (set_local $6
        (i32.sub
         (i32.const 255)
         (get_local $9)
        )
       )
       (loop $label$41
        (set_local $14
         (i32.add
          (get_local $16)
          (get_local $17)
         )
        )
        (set_local $17
         (tee_local $9
          (i32.add
           (get_local $17)
           (i32.const 1)
          )
         )
        )
        (br_if $label$41
         (i32.load8_u
          (i32.add
           (get_local $14)
           (i32.const 1)
          )
         )
        )
       )
       (block $label$42
        (block $label$43
         (br_if $label$43
          (i32.eqz
           (get_local $9)
          )
         )
         (set_local $18
          (i64.extend_u/i32
           (get_local $9)
          )
         )
         (set_local $2
          (i64.const 8)
         )
         (set_local $20
          (i64.const 0)
         )
         (loop $label$44
          (block $label$45
           (br_if $label$45
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $17
                (i32.load8_u
                 (get_local $16)
                )
               )
               (i32.const -65)
              )
              (i32.const 255)
             )
             (i32.const 25)
            )
           )
           (set_local $20
            (i64.or
             (i64.shl
              (i64.shr_s
               (i64.shl
                (i64.extend_u/i32
                 (get_local $17)
                )
                (i64.const 56)
               )
               (i64.const 56)
              )
              (i64.and
               (get_local $2)
               (i64.const 4294967288)
              )
             )
             (get_local $20)
            )
           )
          )
          (set_local $16
           (i32.add
            (get_local $16)
            (i32.const 1)
           )
          )
          (set_local $2
           (i64.add
            (get_local $2)
            (i64.const 8)
           )
          )
          (br_if $label$44
           (i64.ne
            (tee_local $18
             (i64.add
              (get_local $18)
              (i64.const -1)
             )
            )
            (i64.const 0)
           )
          )
          (br $label$42)
         )
        )
        (set_local $20
         (i64.const 0)
        )
       )
       (block $label$46
        (br_if $label$46
         (i32.eqz
          (get_local $7)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (set_local $9
        (i32.add
         (get_local $6)
         (get_local $13)
        )
       )
       (set_local $16
        (i32.const 0)
       )
       (set_local $14
        (i32.const 0)
       )
       (block $label$47
        (br_if $label$47
         (i64.gt_u
          (i64.add
           (get_local $15)
           (i64.const 4611686018427387903)
          )
          (i64.const 9223372036854775806)
         )
        )
        (set_local $2
         (i64.shr_u
          (get_local $20)
          (i64.const 8)
         )
        )
        (set_local $17
         (i32.const 0)
        )
        (block $label$48
         (loop $label$49
          (br_if $label$48
           (i32.gt_u
            (i32.add
             (i32.shl
              (i32.wrap/i64
               (get_local $2)
              )
              (i32.const 24)
             )
             (i32.const -1073741825)
            )
            (i32.const 452984830)
           )
          )
          (block $label$50
           (br_if $label$50
            (i64.ne
             (i64.and
              (tee_local $2
               (i64.shr_u
                (get_local $2)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (loop $label$51
            (br_if $label$48
             (i64.ne
              (i64.and
               (tee_local $2
                (i64.shr_u
                 (get_local $2)
                 (i64.const 8)
                )
               )
               (i64.const 255)
              )
              (i64.const 0)
             )
            )
            (br_if $label$51
             (i32.lt_s
              (tee_local $17
               (i32.add
                (get_local $17)
                (i32.const 1)
               )
              )
              (i32.const 7)
             )
            )
           )
          )
          (set_local $14
           (i32.const 1)
          )
          (br_if $label$49
           (i32.lt_s
            (tee_local $17
             (i32.add
              (get_local $17)
              (i32.const 1)
             )
            )
            (i32.const 7)
           )
          )
          (br $label$47)
         )
        )
        (set_local $14
         (i32.const 0)
        )
       )
       (set_local $9
        (i32.and
         (get_local $9)
         (i32.const 255)
        )
       )
       (call $eosio_assert
        (get_local $14)
        (i32.const 1248)
       )
       (call $eosio_assert
        (i64.gt_s
         (get_local $15)
         (i64.const 0)
        )
        (i32.const 1280)
       )
       (block $label$52
        (br_if $label$52
         (i64.gt_u
          (get_local $19)
          (i64.const 9223372036854775806)
         )
        )
        (set_local $2
         (i64.shr_u
          (i64.load offset=8
           (get_local $3)
          )
          (i64.const 8)
         )
        )
        (set_local $17
         (i32.const 0)
        )
        (block $label$53
         (loop $label$54
          (br_if $label$53
           (i32.gt_u
            (i32.add
             (i32.shl
              (i32.wrap/i64
               (get_local $2)
              )
              (i32.const 24)
             )
             (i32.const -1073741825)
            )
            (i32.const 452984830)
           )
          )
          (block $label$55
           (br_if $label$55
            (i64.ne
             (i64.and
              (tee_local $2
               (i64.shr_u
                (get_local $2)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (loop $label$56
            (br_if $label$53
             (i64.ne
              (i64.and
               (tee_local $2
                (i64.shr_u
                 (get_local $2)
                 (i64.const 8)
                )
               )
               (i64.const 255)
              )
              (i64.const 0)
             )
            )
            (br_if $label$56
             (i32.lt_s
              (tee_local $17
               (i32.add
                (get_local $17)
                (i32.const 1)
               )
              )
              (i32.const 7)
             )
            )
           )
          )
          (set_local $16
           (i32.const 1)
          )
          (br_if $label$54
           (i32.lt_s
            (tee_local $17
             (i32.add
              (get_local $17)
              (i32.const 1)
             )
            )
            (i32.const 7)
           )
          )
          (br $label$52)
         )
        )
        (set_local $16
         (i32.const 0)
        )
       )
       (set_local $2
        (i64.extend_u/i32
         (get_local $9)
        )
       )
       (call $eosio_assert
        (get_local $16)
        (i32.const 1312)
       )
       (call $eosio_assert
        (get_local $5)
        (i32.const 1200)
       )
       (drop
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
         (get_local $4)
         (i32.const 0)
         (i32.add
          (get_local $12)
          (i32.const 1)
         )
        )
       )
       (block $label$57
        (block $label$58
         (br_if $label$58
          (i32.and
           (i32.load8_u
            (get_local $4)
           )
           (i32.const 1)
          )
         )
         (set_local $17
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (br $label$57)
        )
        (set_local $17
         (i32.load offset=8
          (get_local $4)
         )
        )
       )
       (set_local $10
        (i64.or
         (get_local $20)
         (get_local $2)
        )
       )
       (set_local $16
        (i32.const -1)
       )
       (loop $label$59
        (set_local $14
         (i32.add
          (get_local $17)
          (get_local $16)
         )
        )
        (set_local $16
         (tee_local $9
          (i32.add
           (get_local $16)
           (i32.const 1)
          )
         )
        )
        (br_if $label$59
         (i32.load8_u
          (i32.add
           (get_local $14)
           (i32.const 1)
          )
         )
        )
       )
       (set_local $11
        (i64.extend_u/i32
         (get_local $9)
        )
       )
       (set_local $2
        (i64.const 0)
       )
       (set_local $18
        (i64.const 59)
       )
       (set_local $19
        (i64.const 0)
       )
       (loop $label$60
        (set_local $20
         (i64.const 0)
        )
        (block $label$61
         (br_if $label$61
          (i64.ge_u
           (get_local $2)
           (get_local $11)
          )
         )
         (block $label$62
          (block $label$63
           (br_if $label$63
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $16
                (i32.load8_s
                 (get_local $17)
                )
               )
               (i32.const -97)
              )
              (i32.const 255)
             )
             (i32.const 25)
            )
           )
           (set_local $16
            (i32.add
             (get_local $16)
             (i32.const 165)
            )
           )
           (br $label$62)
          )
          (set_local $16
           (select
            (i32.add
             (get_local $16)
             (i32.const 208)
            )
            (i32.const 0)
            (i32.lt_u
             (i32.and
              (i32.add
               (get_local $16)
               (i32.const -49)
              )
              (i32.const 255)
             )
             (i32.const 5)
            )
           )
          )
         )
         (set_local $20
          (i64.shr_s
           (i64.shl
            (i64.extend_u/i32
             (get_local $16)
            )
            (i64.const 56)
           )
           (i64.const 56)
          )
         )
        )
        (block $label$64
         (block $label$65
          (br_if $label$65
           (i64.gt_u
            (get_local $2)
            (i64.const 11)
           )
          )
          (set_local $20
           (i64.shl
            (i64.and
             (get_local $20)
             (i64.const 31)
            )
            (i64.and
             (get_local $18)
             (i64.const 4294967295)
            )
           )
          )
          (br $label$64)
         )
         (set_local $20
          (i64.and
           (get_local $20)
           (i64.const 15)
          )
         )
        )
        (set_local $17
         (i32.add
          (get_local $17)
          (i32.const 1)
         )
        )
        (set_local $2
         (i64.add
          (get_local $2)
          (i64.const 1)
         )
        )
        (set_local $19
         (i64.or
          (get_local $20)
          (get_local $19)
         )
        )
        (br_if $label$60
         (i64.ne
          (tee_local $18
           (i64.add
            (get_local $18)
            (i64.const -5)
           )
          )
          (i64.const -6)
         )
        )
       )
       (i64.store
        (tee_local $17
         (i32.add
          (i32.add
           (get_local $21)
           (i32.const 200)
          )
          (i32.const 16)
         )
        )
        (i64.load
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
        )
       )
       (i64.store
        (tee_local $16
         (i32.add
          (i32.add
           (get_local $21)
           (i32.const 200)
          )
          (i32.const 8)
         )
        )
        (i64.load
         (i32.add
          (get_local $3)
          (i32.const 8)
         )
        )
       )
       (i64.store offset=200
        (get_local $21)
        (i64.load
         (get_local $3)
        )
       )
       (i64.store offset=176
        (get_local $21)
        (get_local $15)
       )
       (i64.store offset=184
        (get_local $21)
        (get_local $10)
       )
       (i64.store
        (i32.add
         (i32.add
          (get_local $21)
          (i32.const 24)
         )
         (i32.const 8)
        )
        (i64.load
         (get_local $16)
        )
       )
       (i64.store offset=192
        (get_local $21)
        (get_local $19)
       )
       (i64.store
        (i32.add
         (i32.add
          (get_local $21)
          (i32.const 24)
         )
         (i32.const 16)
        )
        (i64.load
         (get_local $17)
        )
       )
       (i64.store offset=24
        (get_local $21)
        (i64.load offset=200
         (get_local $21)
        )
       )
       (i64.store
        (i32.add
         (get_local $21)
         (i32.const 8)
        )
        (i64.load offset=184
         (get_local $21)
        )
       )
       (i64.store
        (i32.add
         (get_local $21)
         (i32.const 16)
        )
        (i64.load offset=192
         (get_local $21)
        )
       )
       (i64.store
        (get_local $21)
        (i64.load offset=176
         (get_local $21)
        )
       )
       (call $_ZN12eosotcbackup3askEyN5eosio14extended_assetES1_
        (get_local $0)
        (get_local $1)
        (i32.add
         (get_local $21)
         (i32.const 24)
        )
        (get_local $21)
       )
       (br $label$0)
      )
      (set_local $15
       (i64.const 0)
      )
      (br $label$8)
     )
     (set_local $15
      (i64.const 0)
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $21)
       (i32.const 168)
      )
     )
    )
   )
   (set_local $17
    (i32.const -1)
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
     (i32.add
      (get_local $21)
      (i32.const 240)
     )
     (get_local $4)
     (i32.add
      (get_local $13)
      (i32.const 1)
     )
     (i32.sub
      (i32.add
       (get_local $5)
       (i32.const -1)
      )
      (get_local $13)
     )
     (get_local $4)
    )
   )
   (set_local $16
    (select
     (tee_local $6
      (i32.load offset=248
       (get_local $21)
      )
     )
     (i32.or
      (i32.add
       (get_local $21)
       (i32.const 240)
      )
      (i32.const 1)
     )
     (tee_local $12
      (i32.and
       (i32.load8_u offset=240
        (get_local $21)
       )
       (i32.const 1)
      )
     )
    )
   )
   (set_local $7
    (i32.sub
     (i32.const 255)
     (get_local $9)
    )
   )
   (loop $label$66
    (set_local $14
     (i32.add
      (get_local $16)
      (get_local $17)
     )
    )
    (set_local $17
     (tee_local $9
      (i32.add
       (get_local $17)
       (i32.const 1)
      )
     )
    )
    (br_if $label$66
     (i32.load8_u
      (i32.add
       (get_local $14)
       (i32.const 1)
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $7)
     (get_local $13)
    )
   )
   (block $label$67
    (block $label$68
     (br_if $label$68
      (i32.eqz
       (get_local $9)
      )
     )
     (set_local $18
      (i64.extend_u/i32
       (get_local $9)
      )
     )
     (set_local $2
      (i64.const 8)
     )
     (set_local $20
      (i64.const 0)
     )
     (loop $label$69
      (block $label$70
       (br_if $label$70
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $17
            (i32.load8_u
             (get_local $16)
            )
           )
           (i32.const -65)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $20
        (i64.or
         (i64.shl
          (i64.shr_s
           (i64.shl
            (i64.extend_u/i32
             (get_local $17)
            )
            (i64.const 56)
           )
           (i64.const 56)
          )
          (i64.and
           (get_local $2)
           (i64.const 4294967288)
          )
         )
         (get_local $20)
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $2
       (i64.add
        (get_local $2)
        (i64.const 8)
       )
      )
      (br_if $label$69
       (i64.ne
        (tee_local $18
         (i64.add
          (get_local $18)
          (i64.const -1)
         )
        )
        (i64.const 0)
       )
      )
      (br $label$67)
     )
    )
    (set_local $20
     (i64.const 0)
    )
   )
   (set_local $17
    (i32.and
     (get_local $14)
     (i32.const 255)
    )
   )
   (block $label$71
    (br_if $label$71
     (i32.eqz
      (get_local $12)
     )
    )
    (call $_ZdlPv
     (get_local $6)
    )
   )
   (set_local $18
    (i64.extend_u/i32
     (get_local $17)
    )
   )
   (set_local $16
    (i32.const 0)
   )
   (block $label$72
    (br_if $label$72
     (i64.gt_u
      (i64.add
       (get_local $15)
       (i64.const 4611686018427387903)
      )
      (i64.const 9223372036854775806)
     )
    )
    (set_local $2
     (i64.shr_u
      (get_local $20)
      (i64.const 8)
     )
    )
    (set_local $17
     (i32.const 0)
    )
    (block $label$73
     (loop $label$74
      (br_if $label$73
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $2)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$75
       (br_if $label$75
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$76
        (br_if $label$73
         (i64.ne
          (i64.and
           (tee_local $2
            (i64.shr_u
             (get_local $2)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$76
         (i32.lt_s
          (tee_local $17
           (i32.add
            (get_local $17)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $16
       (i32.const 1)
      )
      (br_if $label$74
       (i32.lt_s
        (tee_local $17
         (i32.add
          (get_local $17)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$72)
     )
    )
    (set_local $16
     (i32.const 0)
    )
   )
   (set_local $10
    (i64.or
     (get_local $20)
     (get_local $18)
    )
   )
   (call $eosio_assert
    (get_local $16)
    (i32.const 1168)
   )
   (call $eosio_assert
    (i64.gt_s
     (get_local $15)
     (i64.const 0)
    )
    (i32.const 1280)
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
     (get_local $4)
     (i32.const 0)
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
     (i32.add
      (get_local $21)
      (i32.const 240)
     )
     (get_local $4)
     (i32.const 0)
     (tee_local $13
      (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj
       (get_local $4)
       (i32.const 44)
       (i32.const 0)
      )
     )
     (get_local $4)
    )
   )
   (set_local $17
    (select
     (tee_local $12
      (i32.load offset=248
       (get_local $21)
      )
     )
     (i32.or
      (i32.add
       (get_local $21)
       (i32.const 240)
      )
      (i32.const 1)
     )
     (tee_local $5
      (i32.and
       (i32.load8_u offset=240
        (get_local $21)
       )
       (i32.const 1)
      )
     )
    )
   )
   (set_local $16
    (i32.const -1)
   )
   (loop $label$77
    (set_local $14
     (i32.add
      (get_local $17)
      (get_local $16)
     )
    )
    (set_local $16
     (tee_local $9
      (i32.add
       (get_local $16)
       (i32.const 1)
      )
     )
    )
    (br_if $label$77
     (i32.load8_u
      (i32.add
       (get_local $14)
       (i32.const 1)
      )
     )
    )
   )
   (set_local $11
    (i64.extend_u/i32
     (get_local $9)
    )
   )
   (set_local $2
    (i64.const 0)
   )
   (set_local $18
    (i64.const 59)
   )
   (set_local $19
    (i64.const 0)
   )
   (loop $label$78
    (set_local $20
     (i64.const 0)
    )
    (block $label$79
     (br_if $label$79
      (i64.ge_u
       (get_local $2)
       (get_local $11)
      )
     )
     (block $label$80
      (block $label$81
       (br_if $label$81
        (i32.gt_u
         (i32.and
          (i32.add
           (tee_local $16
            (i32.load8_s
             (get_local $17)
            )
           )
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $16
        (i32.add
         (get_local $16)
         (i32.const 165)
        )
       )
       (br $label$80)
      )
      (set_local $16
       (select
        (i32.add
         (get_local $16)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $16)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $20
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $16)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (block $label$82
     (block $label$83
      (br_if $label$83
       (i64.gt_u
        (get_local $2)
        (i64.const 11)
       )
      )
      (set_local $20
       (i64.shl
        (i64.and
         (get_local $20)
         (i64.const 31)
        )
        (i64.and
         (get_local $18)
         (i64.const 4294967295)
        )
       )
      )
      (br $label$82)
     )
     (set_local $20
      (i64.and
       (get_local $20)
       (i64.const 15)
      )
     )
    )
    (set_local $17
     (i32.add
      (get_local $17)
      (i32.const 1)
     )
    )
    (set_local $2
     (i64.add
      (get_local $2)
      (i64.const 1)
     )
    )
    (set_local $19
     (i64.or
      (get_local $20)
      (get_local $19)
     )
    )
    (br_if $label$78
     (i64.ne
      (tee_local $18
       (i64.add
        (get_local $18)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (block $label$84
    (br_if $label$84
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
     (get_local $4)
     (i32.const 0)
     (i32.add
      (get_local $13)
      (i32.const 1)
     )
    )
   )
   (drop
    (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
     (i32.add
      (get_local $21)
      (i32.const 144)
     )
     (get_local $4)
    )
   )
   (block $label$85
    (block $label$86
     (block $label$87
      (block $label$88
       (block $label$89
        (block $label$90
         (br_if $label$90
          (tee_local $9
           (i32.and
            (tee_local $17
             (i32.load8_u offset=144
              (get_local $21)
             )
            )
            (i32.const 1)
           )
          )
         )
         (br_if $label$88
          (i32.eqz
           (tee_local $16
            (i32.shr_u
             (get_local $17)
             (i32.const 1)
            )
           )
          )
         )
         (set_local $17
          (i32.or
           (i32.add
            (get_local $21)
            (i32.const 144)
           )
           (i32.const 1)
          )
         )
         (set_local $2
          (i64.const 0)
         )
         (loop $label$91
          (block $label$92
           (br_if $label$92
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $14
                (i32.load8_u
                 (get_local $17)
                )
               )
               (i32.const -48)
              )
              (i32.const 255)
             )
             (i32.const 9)
            )
           )
           (set_local $2
            (i64.add
             (i64.add
              (i64.mul
               (get_local $2)
               (i64.const 10)
              )
              (i64.shr_s
               (i64.shl
                (i64.extend_u/i32
                 (get_local $14)
                )
                (i64.const 56)
               )
               (i64.const 56)
              )
             )
             (i64.const -48)
            )
           )
          )
          (set_local $17
           (i32.add
            (get_local $17)
            (i32.const 1)
           )
          )
          (br_if $label$91
           (tee_local $16
            (i32.add
             (get_local $16)
             (i32.const -1)
            )
           )
          )
          (br $label$89)
         )
        )
        (br_if $label$87
         (i32.eqz
          (tee_local $16
           (i32.load offset=148
            (get_local $21)
           )
          )
         )
        )
        (set_local $17
         (i32.load
          (i32.add
           (get_local $21)
           (i32.const 152)
          )
         )
        )
        (set_local $2
         (i64.const 0)
        )
        (loop $label$93
         (block $label$94
          (br_if $label$94
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $14
               (i32.load8_u
                (get_local $17)
               )
              )
              (i32.const -48)
             )
             (i32.const 255)
            )
            (i32.const 9)
           )
          )
          (set_local $2
           (i64.add
            (i64.add
             (i64.mul
              (get_local $2)
              (i64.const 10)
             )
             (i64.shr_s
              (i64.shl
               (i64.extend_u/i32
                (get_local $14)
               )
               (i64.const 56)
              )
              (i64.const 56)
             )
            )
            (i64.const -48)
           )
          )
         )
         (set_local $17
          (i32.add
           (get_local $17)
           (i32.const 1)
          )
         )
         (br_if $label$93
          (tee_local $16
           (i32.add
            (get_local $16)
            (i32.const -1)
           )
          )
         )
        )
       )
       (br_if $label$86
        (get_local $9)
       )
       (br $label$85)
      )
      (set_local $2
       (i64.const 0)
      )
      (br $label$85)
     )
     (set_local $2
      (i64.const 0)
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $21)
       (i32.const 152)
      )
     )
    )
   )
   (i64.store
    (tee_local $17
     (i32.add
      (i32.add
       (get_local $21)
       (i32.const 120)
      )
      (i32.const 16)
     )
    )
    (i64.load
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
    )
   )
   (i64.store
    (tee_local $16
     (i32.add
      (i32.add
       (get_local $21)
       (i32.const 120)
      )
      (i32.const 8)
     )
    )
    (i64.load
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
   )
   (i64.store offset=120
    (get_local $21)
    (i64.load
     (get_local $3)
    )
   )
   (i64.store offset=96
    (get_local $21)
    (get_local $15)
   )
   (i64.store offset=104
    (get_local $21)
    (get_local $10)
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $21)
      (i32.const 72)
     )
     (i32.const 8)
    )
    (i64.load
     (get_local $16)
    )
   )
   (i64.store offset=112
    (get_local $21)
    (get_local $19)
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $21)
      (i32.const 72)
     )
     (i32.const 16)
    )
    (i64.load
     (get_local $17)
    )
   )
   (i64.store offset=72
    (get_local $21)
    (i64.load offset=120
     (get_local $21)
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $21)
      (i32.const 48)
     )
     (i32.const 8)
    )
    (i64.load offset=104
     (get_local $21)
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $21)
      (i32.const 48)
     )
     (i32.const 16)
    )
    (i64.load offset=112
     (get_local $21)
    )
   )
   (i64.store offset=48
    (get_local $21)
    (i64.load offset=96
     (get_local $21)
    )
   )
   (call $_ZN12eosotcbackup4takeEyyN5eosio14extended_assetES1_
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $21)
     (i32.const 72)
    )
    (i32.add
     (get_local $21)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $21)
    (i32.const 256)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (i64.store offset=184
   (get_local $8)
   (get_local $0)
  )
  (set_local $0
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 624)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $0)
          (i64.const 7)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $0)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $0
    (i64.add
     (get_local $0)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i64.ne
      (get_local $6)
      (get_local $2)
     )
    )
    (call $_ZN5eosio18unpack_action_dataI13transfer_argsEET_v
     (i32.add
      (get_local $8)
      (i32.const 136)
     )
    )
    (set_local $0
     (i64.load offset=144
      (get_local $8)
     )
    )
    (i32.store
     (i32.add
      (get_local $8)
      (i32.const 108)
     )
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 164)
      )
     )
    )
    (i32.store
     (tee_local $4
      (i32.add
       (i32.add
        (get_local $8)
        (i32.const 96)
       )
       (i32.const 8)
      )
     )
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 160)
      )
     )
    )
    (i32.store offset=100
     (get_local $8)
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 156)
      )
     )
    )
    (set_local $7
     (i64.load offset=136
      (get_local $8)
     )
    )
    (i32.store offset=96
     (get_local $8)
     (i32.load offset=152
      (get_local $8)
     )
    )
    (i64.store
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 192)
      )
      (i32.const 8)
     )
     (tee_local $5
      (i64.load
       (get_local $4)
      )
     )
    )
    (i64.store
     (tee_local $4
      (i32.add
       (i32.add
        (get_local $8)
        (i32.const 112)
       )
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (i64.store offset=192
     (get_local $8)
     (tee_local $5
      (i64.load offset=96
       (get_local $8)
      )
     )
    )
    (i64.store offset=112
     (get_local $8)
     (get_local $5)
    )
    (i64.store offset=128
     (get_local $8)
     (get_local $1)
    )
    (drop
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
      (i32.add
       (get_local $8)
       (i32.const 80)
      )
      (tee_local $3
       (i32.add
        (get_local $8)
        (i32.const 168)
       )
      )
     )
    )
    (i64.store
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i64.load offset=128
      (get_local $8)
     )
    )
    (i64.store
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 8)
      )
      (i32.const 8)
     )
     (i64.load
      (get_local $4)
     )
    )
    (i64.store offset=8
     (get_local $8)
     (i64.load offset=112
      (get_local $8)
     )
    )
    (call $_ZN12eosotcbackup10onTransferEyyN5eosio14extended_assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
     (i32.add
      (get_local $8)
      (i32.const 184)
     )
     (get_local $7)
     (get_local $0)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $8)
      (i32.const 80)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (i32.and
        (i32.load8_u offset=80
         (get_local $8)
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load offset=88
       (get_local $8)
      )
     )
    )
    (br_if $label$6
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $3)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 176)
      )
     )
    )
    (br $label$6)
   )
   (block $label$9
    (block $label$10
     (br_if $label$10
      (i64.eq
       (get_local $2)
       (i64.const 8421045207927095296)
      )
     )
     (br_if $label$9
      (i64.eq
       (get_local $2)
       (i64.const -3841130677495922688)
      )
     )
     (br_if $label$6
      (i64.ne
       (get_local $2)
       (i64.const -4993516533478064128)
      )
     )
     (i32.store offset=76
      (get_local $8)
      (i32.const 0)
     )
     (i32.store offset=72
      (get_local $8)
      (i32.const 1)
     )
     (i64.store offset=32 align=4
      (get_local $8)
      (i64.load offset=72
       (get_local $8)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI12eosotcbackupS1_JyyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $8)
        (i32.const 184)
       )
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$6)
    )
    (i32.store offset=68
     (get_local $8)
     (i32.const 0)
    )
    (i32.store offset=64
     (get_local $8)
     (i32.const 2)
    )
    (i64.store offset=40 align=4
     (get_local $8)
     (i64.load offset=64
      (get_local $8)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI12eosotcbackupS1_JEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $8)
       (i32.const 184)
      )
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (br $label$6)
   )
   (i32.store offset=60
    (get_local $8)
    (i32.const 0)
   )
   (i32.store offset=56
    (get_local $8)
    (i32.const 3)
   )
   (i64.store offset=48 align=4
    (get_local $8)
    (i64.load offset=56
     (get_local $8)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI12eosotcbackupS1_JEEEbPT_MT0_FvDpT1_E
     (i32.add
      (get_local $8)
      (i32.const 184)
     )
     (i32.add
      (get_local $8)
      (i32.const 48)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 208)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataI13transfer_argsEET_v (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (tee_local $2
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $1
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $1)
   )
  )
  (call $_ZN5eosio6unpackI13transfer_argsEET_PKcj
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $3)
  )
 )
 (func $_ZN5eosio14execute_actionI12eosotcbackupS1_JyyNS_14extended_assetEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $9
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $7)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $7
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $7)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $7)
     (get_local $1)
    )
   )
  )
  (call $_ZN5eosio6unpackINSt3__15tupleIJyyNS_14extended_assetEEEEEET_PKcj
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
   (get_local $7)
   (get_local $1)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 72)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $9)
     (i32.const 68)
    )
   )
  )
  (i32.store
   (tee_local $1
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 72)
     )
     (i32.const 16)
    )
   )
   (i32.load
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
   )
  )
  (set_local $4
   (i64.load offset=40
    (get_local $9)
   )
  )
  (i32.store
   (i32.add
    (get_local $9)
    (i32.const 84)
   )
   (i32.load
    (i32.add
     (get_local $9)
     (i32.const 60)
    )
   )
  )
  (i32.store
   (tee_local $7
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 72)
     )
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (get_local $9)
     (i32.const 56)
    )
   )
  )
  (set_local $3
   (i64.load offset=32
    (get_local $9)
   )
  )
  (i32.store offset=72
   (get_local $9)
   (i32.load offset=48
    (get_local $9)
   )
  )
  (i32.store offset=76
   (get_local $9)
   (i32.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 32)
     )
     (i32.const 20)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 96)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 96)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store offset=96
   (get_local $9)
   (i64.load offset=72
    (get_local $9)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 120)
    )
    (i32.const 16)
   )
   (tee_local $5
    (i64.load
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 96)
      )
      (i32.const 16)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 120)
    )
    (i32.const 8)
   )
   (tee_local $6
    (i64.load
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (i32.const 16)
   )
   (get_local $5)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $6)
  )
  (i64.store offset=120
   (get_local $9)
   (tee_local $5
    (i64.load offset=96
     (get_local $9)
    )
   )
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $5)
  )
  (call_indirect (type $FUNCSIG$vijji)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
   (get_local $8)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 144)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eosotcbackupS1_JEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (tee_local $5
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.le_u
      (get_local $3)
      (i32.const 512)
     )
    )
    (drop
     (call $read_action_data
      (tee_local $5
       (call $malloc
        (get_local $3)
       )
      )
      (get_local $3)
     )
    )
    (call $free
     (get_local $5)
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $5
     (i32.sub
      (get_local $5)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $5)
     (get_local $3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.load
       (get_local $3)
      )
      (get_local $1)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vi)
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (i32.const 1)
 )
 (func $_ZN5eosio6unpackINSt3__15tupleIJyyNS_14extended_assetEEEEEET_PKcj (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 224)
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i64.const 5462355)
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $5)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $5
          (i64.shr_u
           (get_local $5)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $5
           (i64.shr_u
            (get_local $5)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $6
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $7
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $7
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $7)
   (i32.const 288)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $2)
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (tee_local $6
     (i32.and
      (get_local $2)
      (i32.const -8)
     )
    )
    (i32.const 8)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 16)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 24)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 32)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN5eosio6unpackI13transfer_argsEET_PKcj (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 224)
  )
  (set_local $3
   (i64.const 5462355)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 288)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=12
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $6)
   (i32.add
    (get_local $1)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $0)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store offset=44
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEE13transfer_argsLPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3EEEEvSQ_OSR_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.add
    (get_local $6)
    (i32.const 24)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEE13transfer_argsLPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3EEEEvSQ_OSR_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 1360)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 464)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 1364)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 9760)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=9846
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=9848
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=9846
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=9848
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=9848
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=9848
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=9846
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=9846
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=9848
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=9848
        (i32.const 0)
       )
      )
     )
     (i32.store offset=9848
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=9748
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 9556)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 9556)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=9852
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (tee_local $3
       (i32.and
        (tee_local $6
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
     )
     (br_if $label$1
      (i32.ge_u
       (tee_local $4
        (i32.shr_u
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $1)
      )
     )
     (br $label$0)
    )
    (br_if $label$0
     (i32.lt_u
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
      (get_local $1)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (get_local $2)
     )
    )
    (block $label$4
     (block $label$5
      (br_if $label$5
       (get_local $3)
      )
      (set_local $5
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $label$4)
     )
     (set_local $5
      (i32.load offset=8
       (get_local $0)
      )
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (tee_local $3
        (i32.sub
         (tee_local $3
          (i32.sub
           (get_local $4)
           (get_local $1)
          )
         )
         (tee_local $2
          (select
           (get_local $3)
           (get_local $2)
           (i32.lt_u
            (get_local $3)
            (get_local $2)
           )
          )
         )
        )
       )
      )
     )
     (drop
      (call $memmove
       (tee_local $1
        (i32.add
         (get_local $5)
         (get_local $1)
        )
       )
       (i32.add
        (get_local $1)
        (get_local $2)
       )
       (get_local $3)
      )
     )
     (set_local $6
      (i32.load8_u
       (get_local $0)
      )
     )
    )
    (set_local $2
     (i32.sub
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.and
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $label$7)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.store8
     (i32.add
      (get_local $5)
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.and
      (tee_local $4
       (i32.load8_u
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $4
     (i32.shr_u
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $4
    (i32.load offset=4
     (get_local $0)
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $0
   (i32.const -1)
  )
  (block $label$2
   (br_if $label$2
    (i32.le_u
     (get_local $4)
     (get_local $2)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (tee_local $0
        (i32.sub
         (get_local $4)
         (get_local $2)
        )
       )
      )
     )
     (set_local $0
      (call $memchr
       (i32.add
        (get_local $3)
        (get_local $2)
       )
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
       (get_local $0)
      )
     )
     (br $label$3)
    )
    (set_local $0
     (i32.const 0)
    )
   )
   (set_local $0
    (select
     (i32.sub
      (get_local $0)
      (get_local $3)
     )
     (i32.const -1)
     (get_local $0)
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (tee_local $5
      (i32.and
       (tee_local $6
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $6
     (i32.shr_u
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $6
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $4)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i32.lt_u
     (get_local $6)
     (get_local $1)
    )
   )
   (set_local $6
    (select
     (tee_local $6
      (i32.sub
       (get_local $6)
       (get_local $1)
      )
     )
     (get_local $2)
     (i32.lt_u
      (get_local $6)
      (get_local $2)
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (get_local $5)
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$3)
    )
    (set_local $0
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $2
       (select
        (get_local $4)
        (get_local $6)
        (tee_local $5
         (i32.gt_u
          (get_local $6)
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $label$5
     (i32.eqz
      (tee_local $1
       (call $memcmp
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (get_local $3)
        (get_local $2)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (return
    (select
     (i32.const -1)
     (get_local $5)
     (i32.lt_u
      (get_local $6)
      (get_local $4)
     )
    )
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $8
      (select
       (i32.load offset=4
        (get_local $1)
       )
       (i32.shr_u
        (tee_local $8
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $5
        (i32.and
         (get_local $8)
         (i32.const 1)
        )
       )
      )
     )
     (get_local $2)
    )
   )
   (br_if $label$0
    (i32.ge_u
     (tee_local $3
      (select
       (tee_local $8
        (i32.sub
         (get_local $8)
         (get_local $2)
        )
       )
       (get_local $3)
       (i32.lt_u
        (get_local $8)
        (get_local $3)
       )
      )
     )
     (i32.const -16)
    )
   )
   (set_local $6
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (set_local $8
      (call $_Znwj
       (tee_local $7
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $8)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $8)
      (i32.add
       (select
        (get_local $6)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
        (get_local $5)
       )
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $8)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $memchr (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (i32.const 0)
  )
  (set_local $4
   (i32.ne
    (get_local $2)
    (i32.const 0)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i32.eqz
          (get_local $2)
         )
        )
        (br_if $label$4
         (i32.eqz
          (i32.and
           (get_local $0)
           (i32.const 3)
          )
         )
        )
        (set_local $3
         (i32.and
          (get_local $1)
          (i32.const 255)
         )
        )
        (loop $label$6
         (br_if $label$2
          (i32.eq
           (i32.load8_u
            (get_local $0)
           )
           (get_local $3)
          )
         )
         (set_local $4
          (i32.ne
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $5
          (i32.add
           (get_local $2)
           (i32.const -1)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
         (br_if $label$3
          (i32.eq
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $2
          (get_local $5)
         )
         (br_if $label$6
          (i32.and
           (get_local $0)
           (i32.const 3)
          )
         )
         (br $label$3)
        )
       )
       (set_local $5
        (get_local $2)
       )
       (br_if $label$1
        (get_local $4)
       )
       (br $label$0)
      )
      (set_local $5
       (get_local $2)
      )
     )
     (br_if $label$1
      (get_local $4)
     )
     (br $label$0)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.and
       (get_local $1)
       (i32.const 255)
      )
     )
    )
    (block $label$8
     (block $label$9
      (br_if $label$9
       (i32.lt_u
        (get_local $5)
        (i32.const 4)
       )
      )
      (set_local $4
       (i32.mul
        (i32.and
         (get_local $1)
         (i32.const 255)
        )
        (i32.const 16843009)
       )
      )
      (loop $label$10
       (br_if $label$8
        (i32.and
         (i32.and
          (i32.xor
           (tee_local $2
            (i32.xor
             (i32.load
              (get_local $0)
             )
             (get_local $4)
            )
           )
           (i32.const -1)
          )
          (i32.add
           (get_local $2)
           (i32.const -16843009)
          )
         )
         (i32.const -2139062144)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (br_if $label$10
        (i32.gt_u
         (tee_local $5
          (i32.add
           (get_local $5)
           (i32.const -4)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$0
      (i32.eqz
       (get_local $5)
      )
     )
    )
    (set_local $2
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
    (loop $label$11
     (br_if $label$7
      (i32.eq
       (i32.load8_u
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$11
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (get_local $5)
   )
  )
  (select
   (get_local $0)
   (i32.const 0)
   (get_local $6)
  )
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
