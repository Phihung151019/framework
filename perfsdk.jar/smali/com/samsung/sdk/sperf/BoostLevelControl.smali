.class Lcom/samsung/sdk/sperf/BoostLevelControl;
.super Ljava/lang/Object;
.source "BoostLevelControl.java"


# static fields
.field public static final BOOST_TYPE_NUM:I = 0xb

.field private static boostResourceCount:I

.field private static boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

.field private static instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

.field private static isBoostLevelIntialized:Z


# instance fields
.field private scenarioBoostObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/sdk/sperf/BoostObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->isBoostLevelIntialized:Z

    .line 13
    const/16 v1, 0xb

    new-array v1, v1, [Lcom/samsung/sdk/sperf/BoostResource;

    sput-object v1, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    .line 14
    sput v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResourceCount:I

    return-void
.end method

.method private constructor <init>(Lcom/samsung/sdk/sperf/SessionControl;)V
    .locals 26
    .param p1, "sessionControl"    # Lcom/samsung/sdk/sperf/SessionControl;

    .line 37
    const-string v0, " "

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/samsung/sdk/sperf/BoostLevelControl;->scenarioBoostObjectMap:Ljava/util/HashMap;

    .line 41
    const/4 v1, -0x1

    .line 42
    .local v1, "timeout":I
    const v3, 0x3d8aee6

    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v4

    .line 43
    .local v4, "cpumin":[I
    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v5

    .line 44
    .local v5, "cpumax":[I
    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v6

    .line 45
    .local v6, "gpumin":[I
    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v7

    .line 46
    .local v7, "gpumax":[I
    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v8

    .line 47
    .local v8, "busmin":[I
    filled-new-array {v3, v3, v3, v3, v3}, [I

    move-result-object v3

    .line 48
    .local v3, "busmax":[I
    const/4 v9, 0x0

    const/4 v10, 0x4

    filled-new-array {v9, v10}, [I

    move-result-object v11

    .line 49
    .local v11, "core":[I
    const/16 v12, 0x4a

    const/16 v13, 0x1e

    const/16 v14, 0x46

    filled-new-array {v14, v12, v13}, [I

    move-result-object v12

    .line 50
    .local v12, "affinity":[I
    const/16 v13, 0x14

    const/16 v14, -0x14

    const/16 v15, -0xa

    const/16 v10, 0xa

    filled-new-array {v14, v15, v9, v10, v13}, [I

    move-result-object v13

    .line 51
    .local v13, "priority":[I
    const/4 v14, 0x1

    filled-new-array {v14}, [I

    move-result-object v15

    .line 54
    .local v15, "lpmdisable":[I
    move/from16 v17, v10

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/sdk/sperf/SessionControl;->getDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v18

    move-object/from16 v19, v18

    .line 55
    .local v19, "out":Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/sdk/sperf/SessionControl;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v18

    .line 56
    .local v18, "in":Ljava/io/DataInputStream;
    if-eqz v19, :cond_9

    if-nez v18, :cond_0

    move-object/from16 v23, v4

    move-object/from16 v14, v19

    goto/16 :goto_6

    .line 59
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v20

    move/from16 v21, v20

    .line 60
    .local v21, "type":I
    move-object/from16 v14, v19

    move/from16 v10, v21

    .end local v19    # "out":Ljava/io/DataOutputStream;
    .end local v21    # "type":I
    .local v10, "type":I
    .local v14, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v14, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 63
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    .line 64
    .local v21, "numCpuLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v22

    .line 65
    .local v22, "numGpuLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v23

    .line 66
    .local v23, "numBusLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v1, v24

    .line 67
    const/4 v9, -0x1

    if-ne v1, v9, :cond_1

    .line 68
    const v1, 0x5f5e0ff

    .line 71
    :cond_1
    const/16 v25, 0x0

    move/from16 v9, v25

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v9, v2, :cond_2

    .line 72
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    aput v2, v4, v9

    .line 71
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    goto :goto_0

    .line 115
    .end local v9    # "i":I
    .end local v10    # "type":I
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v21    # "numCpuLevels":I
    .end local v22    # "numGpuLevels":I
    .end local v23    # "numBusLevels":I
    :catch_0
    move-exception v0

    move-object/from16 v23, v4

    goto/16 :goto_7

    .line 74
    .restart local v10    # "type":I
    .restart local v14    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "numCpuLevels":I
    .restart local v22    # "numGpuLevels":I
    .restart local v23    # "numBusLevels":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v2, :cond_3

    .line 75
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v25

    aput v25, v6, v9

    .line 74
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 77
    .end local v9    # "i":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 78
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v25

    aput v25, v8, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 82
    .end local v9    # "i":I
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    invoke-static {v9, v4, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 83
    const/4 v9, 0x2

    invoke-static {v9, v6, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 84
    const/4 v9, 0x4

    invoke-static {v9, v8, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 87
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v9

    .line 88
    .end local v21    # "numCpuLevels":I
    .local v9, "numCpuLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    move/from16 v25, v21

    .line 89
    .end local v22    # "numGpuLevels":I
    .local v25, "numGpuLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    move/from16 v22, v21

    .line 90
    .end local v23    # "numBusLevels":I
    .local v22, "numBusLevels":I
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v1, v21

    .line 91
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 92
    const v1, 0x5f5e0ff

    .line 94
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move-object/from16 v23, v4

    const/4 v4, 0x5

    .end local v4    # "cpumin":[I
    .local v23, "cpumin":[I
    if-ge v2, v4, :cond_6

    .line 95
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    aput v4, v5, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, v23

    goto :goto_3

    .line 115
    .end local v2    # "i":I
    .end local v9    # "numCpuLevels":I
    .end local v10    # "type":I
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v22    # "numBusLevels":I
    .end local v25    # "numGpuLevels":I
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 97
    .restart local v9    # "numCpuLevels":I
    .restart local v10    # "type":I
    .restart local v14    # "out":Ljava/io/DataOutputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "numBusLevels":I
    .restart local v25    # "numGpuLevels":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    const/4 v4, 0x5

    if-ge v2, v4, :cond_7

    .line 98
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    aput v4, v7, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 100
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    const/4 v4, 0x5

    if-ge v2, v4, :cond_8

    .line 101
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    aput v4, v3, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 103
    .end local v2    # "i":I
    :cond_8
    const/4 v2, 0x1

    :try_start_4
    invoke-static {v2, v5, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 104
    const/4 v2, 0x3

    invoke-static {v2, v7, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 105
    const/4 v4, 0x5

    invoke-static {v4, v3, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 108
    const-string v4, "Get message : "

    invoke-static {v4}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v2

    const-string v2, "numCpuLevels = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", numGpuLevels = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, v25

    .end local v25    # "numGpuLevels":I
    .local v4, "numGpuLevels":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v25, v1

    .end local v1    # "timeout":I
    .local v25, "timeout":I
    :try_start_5
    const-string v1, ", numBusLevels = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v22

    .end local v22    # "numBusLevels":I
    .local v2, "numBusLevels":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v2

    .end local v2    # "numBusLevels":I
    .restart local v22    # "numBusLevels":I
    const-string v2, "cpus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v24, 0x0

    aget v2, v5, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v20, 0x1

    aget v2, v5, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v19, 0x2

    aget v2, v5, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v5, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x4

    aget v2, v5, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gpus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v24, 0x0

    aget v2, v7, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v20, 0x1

    aget v2, v7, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v19, 0x2

    aget v2, v7, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v7, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x4

    aget v2, v7, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v24, 0x0

    aget v2, v3, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v20, 0x1

    aget v2, v3, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v19, 0x2

    aget v2, v3, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v3, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v16, 0x4

    aget v1, v3, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 117
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    move/from16 v1, v25

    goto :goto_8

    .line 115
    .end local v4    # "numGpuLevels":I
    .end local v9    # "numCpuLevels":I
    .end local v10    # "type":I
    .end local v22    # "numBusLevels":I
    :catch_2
    move-exception v0

    move/from16 v1, v25

    goto :goto_7

    .end local v25    # "timeout":I
    .restart local v1    # "timeout":I
    :catch_3
    move-exception v0

    move/from16 v25, v1

    .end local v1    # "timeout":I
    .restart local v25    # "timeout":I
    goto :goto_7

    .line 56
    .end local v23    # "cpumin":[I
    .end local v25    # "timeout":I
    .restart local v1    # "timeout":I
    .local v4, "cpumin":[I
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    :cond_9
    move-object/from16 v23, v4

    move-object/from16 v14, v19

    .line 57
    .end local v4    # "cpumin":[I
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v14    # "out":Ljava/io/DataOutputStream;
    .restart local v23    # "cpumin":[I
    :goto_6
    return-void

    .line 115
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v23    # "cpumin":[I
    .restart local v4    # "cpumin":[I
    :catch_4
    move-exception v0

    move-object/from16 v23, v4

    .line 116
    .end local v4    # "cpumin":[I
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "cpumin":[I
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    const/4 v0, 0x6

    invoke-static {v0, v11, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 120
    const/4 v0, 0x7

    const v2, 0x5f5e0ff

    invoke-static {v0, v11, v2}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 121
    const/16 v0, 0x8

    invoke-static {v0, v12, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 122
    const/16 v2, 0x9

    invoke-static {v2, v13, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 123
    move/from16 v4, v17

    invoke-static {v4, v15, v1}, Lcom/samsung/sdk/sperf/BoostLevelControl;->setBoostResource(I[II)I

    .line 125
    sget-object v4, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v0, v4, v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/samsung/sdk/sperf/BoostResource;->setDefaultLevel(I)V

    .line 126
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v0, v0, v2

    array-length v2, v13

    const/16 v19, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/sdk/sperf/BoostResource;->setDefaultLevel(I)V

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->initScenarioBoostObject()V

    .line 129
    const/16 v20, 0x1

    sput-boolean v20, Lcom/samsung/sdk/sperf/BoostLevelControl;->isBoostLevelIntialized:Z

    .line 130
    return-void
.end method

.method public static createInstance(Lcom/samsung/sdk/sperf/SessionControl;)Lcom/samsung/sdk/sperf/BoostLevelControl;
    .locals 1
    .param p0, "sessionControl"    # Lcom/samsung/sdk/sperf/SessionControl;

    .line 147
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/samsung/sdk/sperf/BoostLevelControl;

    invoke-direct {v0, p0}, Lcom/samsung/sdk/sperf/BoostLevelControl;-><init>(Lcom/samsung/sdk/sperf/SessionControl;)V

    sput-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    .line 149
    sget-boolean v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->isBoostLevelIntialized:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResourceCount:I

    if-gtz v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    .line 153
    :cond_1
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    return-object v0
.end method

.method public static getBoostResource(I)Lcom/samsung/sdk/sperf/BoostResource;
    .locals 1
    .param p0, "type"    # I

    .line 230
    if-ltz p0, :cond_1

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v0, v0, p0

    return-object v0

    .line 231
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRealBoostLevel(II)I
    .locals 2
    .param p0, "level"    # I
    .param p1, "type"    # I

    .line 220
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 221
    return v1

    .line 223
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Lcom/samsung/sdk/sperf/BoostResource;->getRealBoostLevel(I)I

    move-result v0

    return v0

    .line 224
    :cond_2
    :goto_0
    return v1
.end method

.method public static getRealBoostLevel(Lcom/samsung/sdk/sperf/BoostObject;I)I
    .locals 2
    .param p0, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;
    .param p1, "type"    # I

    .line 210
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->instance:Lcom/samsung/sdk/sperf/BoostLevelControl;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 211
    return v1

    .line 213
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lcom/samsung/sdk/sperf/BoostObject;->getLevel(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/sdk/sperf/BoostResource;->getRealBoostLevel(I)I

    move-result v0

    return v0

    .line 214
    :cond_2
    :goto_0
    return v1
.end method

.method private initScenarioBoostObject()V
    .locals 5

    .line 18
    const/4 v0, 0x0

    .line 21
    .local v0, "obj":Lcom/samsung/sdk/sperf/BoostObject;
    new-instance v1, Lcom/samsung/sdk/sperf/BoostObject;

    invoke-direct {v1}, Lcom/samsung/sdk/sperf/BoostObject;-><init>()V

    .line 22
    .end local v0    # "obj":Lcom/samsung/sdk/sperf/BoostObject;
    .local v1, "obj":Lcom/samsung/sdk/sperf/BoostObject;
    const/4 v0, 0x0

    const/4 v2, 0x2

    const v3, 0x3d8aee6

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    .line 23
    const/4 v0, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v3}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    .line 24
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostLevelControl;->scenarioBoostObjectMap:Ljava/util/HashMap;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/samsung/sdk/sperf/BoostObject;

    invoke-direct {v0}, Lcom/samsung/sdk/sperf/BoostObject;-><init>()V

    .line 28
    .end local v1    # "obj":Lcom/samsung/sdk/sperf/BoostObject;
    .restart local v0    # "obj":Lcom/samsung/sdk/sperf/BoostObject;
    invoke-virtual {v0, v2, v2, v3}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    .line 29
    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostLevelControl;->scenarioBoostObjectMap:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/samsung/sdk/sperf/BoostObject;

    invoke-direct {v1}, Lcom/samsung/sdk/sperf/BoostObject;-><init>()V

    .line 33
    .end local v0    # "obj":Lcom/samsung/sdk/sperf/BoostObject;
    .restart local v1    # "obj":Lcom/samsung/sdk/sperf/BoostObject;
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    .line 34
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostLevelControl;->scenarioBoostObjectMap:Ljava/util/HashMap;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static setBoostResource(I[II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "table"    # [I
    .param p2, "timeout"    # I

    .line 133
    const/4 v0, -0x1

    if-ltz p0, :cond_2

    const/16 v1, 0xb

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    sget-object v1, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v1, v1, p0

    if-eqz v1, :cond_1

    .line 137
    return v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====setBoostResource==== type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 141
    sget v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResourceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResourceCount:I

    .line 142
    sget-object v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    new-instance v1, Lcom/samsung/sdk/sperf/BoostResource;

    invoke-direct {v1, p1, p2}, Lcom/samsung/sdk/sperf/BoostResource;-><init>([II)V

    aput-object v1, v0, p0

    .line 143
    sget v0, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResourceCount:I

    return v0

    .line 134
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method getBoostObjectByScenario(II)Lcom/samsung/sdk/sperf/BoostObject;
    .locals 6
    .param p1, "scenarioID"    # I
    .param p2, "timeout"    # I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "boostObject":Lcom/samsung/sdk/sperf/BoostObject;
    const/4 v1, 0x0

    .line 183
    .local v1, "targetObject":Lcom/samsung/sdk/sperf/BoostObject;
    const/16 v2, 0x40

    .local v2, "key":I
    :goto_0
    const/16 v3, 0x100

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    .line 184
    and-int v3, v2, p1

    if-ne v3, v2, :cond_1

    .line 185
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostLevelControl;->scenarioBoostObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/samsung/sdk/sperf/BoostObject;

    .line 186
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 187
    new-instance v3, Lcom/samsung/sdk/sperf/BoostObject;

    invoke-direct {v3}, Lcom/samsung/sdk/sperf/BoostObject;-><init>()V

    move-object v0, v3

    .line 189
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/sdk/sperf/BoostObject;->combineBoostObject(Lcom/samsung/sdk/sperf/BoostObject;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    return-object v4

    .line 183
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "key":I
    :cond_2
    if-nez v0, :cond_3

    .line 196
    return-object v4

    .line 199
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_5

    .line 200
    invoke-virtual {v0, v2}, Lcom/samsung/sdk/sperf/BoostObject;->getLevel(I)I

    move-result v3

    .line 201
    .local v3, "level":I
    const v4, 0x3d8aee6

    if-eq v3, v4, :cond_4

    .line 202
    invoke-virtual {v0, v2, v3, p2}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    .line 199
    .end local v3    # "level":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "i":I
    :cond_5
    return-object v0
.end method

.method public updateBoost(IIILcom/samsung/sdk/sperf/BoostObject;)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "level"    # I
    .param p3, "timeout"    # I
    .param p4, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 157
    const/4 v0, -0x1

    if-ltz p1, :cond_5

    sget-object v1, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    if-nez p4, :cond_1

    .line 161
    return v0

    .line 163
    :cond_1
    sget-object v1, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    .line 164
    return v0

    .line 166
    :cond_2
    sget-object v1, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/samsung/sdk/sperf/BoostResource;->adjustLevel(I)I

    move-result v1

    .line 167
    .local v1, "mLevel":I
    sget-object v2, Lcom/samsung/sdk/sperf/BoostLevelControl;->boostResources:[Lcom/samsung/sdk/sperf/BoostResource;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Lcom/samsung/sdk/sperf/BoostResource;->adjustTimeout(I)I

    move-result v2

    .line 168
    .local v2, "mTimeout":I
    if-eq v1, p2, :cond_3

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Boost Level is not available : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 170
    return v0

    .line 172
    :cond_3
    if-eq v2, p3, :cond_4

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Boost timeout is not available : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 174
    return v0

    .line 176
    :cond_4
    invoke-virtual {p4, p1, v1, v2}, Lcom/samsung/sdk/sperf/BoostObject;->update(III)I

    move-result v0

    return v0

    .line 158
    .end local v1    # "mLevel":I
    .end local v2    # "mTimeout":I
    :cond_5
    :goto_0
    return v0
.end method
