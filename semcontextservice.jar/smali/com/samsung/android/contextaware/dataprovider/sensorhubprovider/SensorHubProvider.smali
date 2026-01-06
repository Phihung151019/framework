.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 801
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    .line 769
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 139
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    .line 140
    return-void
.end method

.method public disable()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    .line 121
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 129
    return-void

    .line 123
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 124
    return-void
.end method

.method protected final disableForRestore()V
    .locals 0

    .line 175
    return-void
.end method

.method public enable()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    .line 103
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 111
    return-void

    .line 105
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 106
    return-void
.end method

.method protected final enableForRestore()V
    .locals 0

    .line 164
    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 781
    const-string v0, "Action"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    .line 597
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .line 751
    const/4 v0, 0x1

    .line 753
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :cond_0
    const/4 v0, 0x1

    .line 759
    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 760
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .locals 0

    .line 80
    return-void
.end method

.method public parse([BI)I
    .locals 35
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 204
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 206
    .local v1, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v2

    .line 208
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_14

    .line 211
    const/4 v6, 0x0

    .line 214
    .local v6, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    if-ne v7, v8, :cond_4

    .line 217
    array-length v7, v0

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    if-gez v7, :cond_0

    .line 218
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 219
    return v3

    .line 222
    :cond_0
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v1, v0, v1

    .line 224
    .local v1, "mType":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 225
    .local v9, "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v10

    if-ne v10, v1, :cond_1

    .line 226
    move-object v6, v9

    .line 227
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 228
    goto :goto_1

    .line 230
    .end local v9    # "k":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    :cond_1
    goto :goto_0

    .line 232
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 233
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 234
    return v3

    .line 237
    .end local v1    # "mType":I
    :cond_3
    move v1, v7

    goto :goto_2

    .line 238
    .end local v7    # "tmpNext":I
    .local v1, "tmpNext":I
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/util/ArrayList;

    .line 242
    :goto_2
    const/4 v7, 0x0

    .line 243
    .local v7, "arraySize":I
    const/4 v8, 0x0

    .line 244
    .local v8, "temp":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 246
    .local v10, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    array-length v11, v0

    sub-int/2addr v11, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v12

    sub-int/2addr v11, v12

    if-gez v11, :cond_5

    .line 247
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 248
    return v3

    .line 251
    :cond_5
    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/16 v16, 0x3

    const/16 v17, 0x2

    move/from16 v18, v3

    const/4 v3, 0x4

    packed-switch v11, :pswitch_data_0

    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    goto/16 :goto_5

    .line 346
    :pswitch_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v11

    move/from16 v19, v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v20, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v20, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .local v21, "tmpNext":I
    aget-byte v20, v0, v20

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .local v22, "tmpNext":I
    aget-byte v21, v0, v21

    add-int/lit8 v23, v22, 0x1

    .end local v22    # "tmpNext":I
    .local v23, "tmpNext":I
    aget-byte v22, v0, v22

    move/from16 v24, v5

    new-array v5, v3, [B

    aput-byte v1, v5, v19

    aput-byte v20, v5, v24

    aput-byte v21, v5, v17

    aput-byte v22, v5, v16

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v5, 0x7

    const/16 v20, 0x6

    int-to-double v12, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v21

    div-double v12, v12, v21

    .line 346
    invoke-virtual {v11, v4, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v22, v5

    move/from16 v1, v23

    const/16 v23, 0x5

    goto/16 :goto_5

    .line 339
    .end local v23    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_1
    move/from16 v19, v4

    move/from16 v24, v5

    const/4 v5, 0x7

    const/16 v20, 0x6

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v12, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v13, "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v21, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v13, v0, v13

    move/from16 v22, v5

    new-array v5, v3, [B

    aput-byte v19, v5, v19

    aput-byte v1, v5, v24

    aput-byte v12, v5, v17

    aput-byte v13, v5, v16

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v12, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v25

    div-double v12, v12, v25

    .line 339
    invoke-virtual {v4, v11, v12, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 343
    move/from16 v1, v21

    const/16 v23, 0x5

    goto/16 :goto_5

    .line 332
    .end local v21    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_2
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v11, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    new-array v13, v3, [B

    aput-byte v19, v13, v19

    aput-byte v19, v13, v24

    aput-byte v1, v13, v17

    aput-byte v11, v13, v16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v11, 0x5

    int-to-double v14, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v25

    div-double v14, v14, v25

    .line 332
    invoke-virtual {v4, v5, v14, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 336
    move/from16 v23, v11

    move v1, v12

    goto/16 :goto_5

    .line 325
    .end local v12    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_3
    move/from16 v19, v4

    move/from16 v24, v5

    const/4 v11, 0x5

    const/16 v20, 0x6

    const/16 v22, 0x7

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v12, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .local v15, "tmpNext":I
    aget-byte v14, v0, v14

    add-int/lit8 v21, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v15, v0, v15

    move/from16 v23, v11

    new-array v11, v3, [B

    aput-byte v1, v11, v19

    aput-byte v12, v11, v24

    aput-byte v14, v11, v17

    aput-byte v15, v11, v16

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v1, v11

    .line 325
    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 329
    move/from16 v1, v21

    goto/16 :goto_5

    .line 318
    .end local v21    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_4
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v12, v0, v12

    new-array v15, v3, [B

    aput-byte v19, v15, v19

    aput-byte v1, v15, v24

    aput-byte v11, v15, v17

    aput-byte v12, v15, v16

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v1, v11

    .line 318
    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 322
    move v1, v14

    goto/16 :goto_5

    .line 311
    .end local v14    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_5
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    new-array v14, v3, [B

    aput-byte v19, v14, v19

    aput-byte v19, v14, v24

    aput-byte v1, v14, v17

    aput-byte v11, v14, v16

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v14

    double-to-float v11, v14

    div-float/2addr v1, v11

    .line 311
    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 315
    move v1, v12

    goto/16 :goto_5

    .line 302
    .end local v12    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_6
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    aget-byte v14, v0, v14

    add-int/lit8 v21, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v15, v0, v15

    add-int/lit8 v25, v21, 0x1

    .end local v21    # "tmpNext":I
    .local v25, "tmpNext":I
    aget-byte v21, v0, v21

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .local v26, "tmpNext":I
    aget-byte v25, v0, v25

    add-int/lit8 v27, v26, 0x1

    .end local v26    # "tmpNext":I
    .local v27, "tmpNext":I
    aget-byte v26, v0, v26

    move/from16 v28, v3

    const/16 v13, 0x8

    new-array v3, v13, [B

    aput-byte v1, v3, v19

    aput-byte v11, v3, v24

    aput-byte v12, v3, v17

    aput-byte v14, v3, v16

    aput-byte v15, v3, v28

    aput-byte v21, v3, v23

    aput-byte v25, v3, v20

    aput-byte v26, v3, v22

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v14

    double-to-int v1, v14

    int-to-long v14, v1

    div-long/2addr v11, v14

    .line 302
    invoke-virtual {v4, v5, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 308
    move/from16 v1, v27

    goto/16 :goto_5

    .line 280
    .end local v27    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_7
    move/from16 v28, v3

    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimeStamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 281
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    .line 282
    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    add-int/lit8 v11, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    aget-byte v14, v0, v14

    move/from16 v21, v1

    const/16 v13, 0x8

    new-array v1, v13, [B

    aput-byte v19, v1, v19

    aput-byte v19, v1, v24

    aput-byte v19, v1, v17

    aput-byte v19, v1, v16

    aput-byte v21, v1, v28

    aput-byte v11, v1, v23

    aput-byte v12, v1, v20

    aput-byte v14, v1, v22

    .line 284
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    .line 283
    invoke-virtual {v5, v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v11

    .line 281
    invoke-virtual {v3, v4, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move v1, v15

    goto/16 :goto_5

    .line 294
    .end local v15    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :cond_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v5, v0, v5

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v12, v0, v12

    move/from16 v15, v28

    new-array v13, v15, [B

    aput-byte v1, v13, v19

    aput-byte v5, v13, v24

    aput-byte v11, v13, v17

    aput-byte v12, v13, v16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-int v5, v11

    div-int/2addr v1, v5

    .line 294
    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 299
    move v1, v14

    goto/16 :goto_5

    .line 273
    .end local v14    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_8
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v5, v0, v5

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v11, v0, v11

    const/4 v15, 0x4

    new-array v13, v15, [B

    aput-byte v19, v13, v19

    aput-byte v1, v13, v24

    aput-byte v5, v13, v17

    aput-byte v11, v13, v16

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-int v5, v13

    div-int/2addr v1, v5

    .line 273
    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 277
    move v1, v12

    goto/16 :goto_5

    .line 265
    .end local v12    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :pswitch_9
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    const/4 v15, 0x4

    new-array v5, v15, [B

    aput-byte v19, v5, v19

    aput-byte v19, v5, v24

    aput-byte v1, v5, v17

    aput-byte v3, v5, v16

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 269
    .end local v8    # "temp":I
    .local v1, "temp":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-int v8, v11

    div-int v8, v1, v8

    invoke-virtual {v3, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 270
    move v8, v1

    move v1, v4

    goto :goto_5

    .line 260
    .end local v4    # "tmpNext":I
    .local v1, "tmpNext":I
    .restart local v8    # "temp":I
    :pswitch_a
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v1, v0, v1

    .line 261
    .end local v8    # "temp":I
    .local v1, "temp":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v11

    double-to-int v8, v11

    div-int v8, v1, v8

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 262
    move v8, v1

    move v1, v3

    goto :goto_5

    .line 254
    .end local v3    # "tmpNext":I
    .local v1, "tmpNext":I
    .restart local v8    # "temp":I
    :pswitch_b
    move/from16 v19, v4

    move/from16 v24, v5

    const/16 v20, 0x6

    const/16 v22, 0x7

    const/16 v23, 0x5

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    .line 255
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v1, v0, v1

    if-nez v1, :cond_7

    move/from16 v1, v19

    goto :goto_4

    :cond_7
    move/from16 v1, v24

    .line 254
    :goto_4
    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 257
    move v1, v5

    .line 353
    .end local v5    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :goto_5
    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 354
    :cond_8
    move v3, v8

    move v7, v3

    .line 357
    :cond_9
    invoke-virtual {v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v3

    .line 358
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    if-eqz v3, :cond_11

    .line 359
    const/4 v4, 0x0

    .line 360
    .local v4, "totalSize":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v5, "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v14, "TimeStampArray"

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 364
    .local v12, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_1

    goto :goto_7

    .line 389
    :pswitch_c
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [D

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 383
    :pswitch_d
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [F

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    goto :goto_7

    .line 377
    :pswitch_e
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [J

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    goto :goto_7

    .line 369
    :pswitch_f
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 370
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [J

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 372
    :cond_a
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [I

    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    nop

    .line 392
    :goto_7
    invoke-virtual {v12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v13

    add-int/2addr v4, v13

    .line 393
    .end local v12    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    goto :goto_6

    .line 397
    :cond_b
    array-length v11, v0

    sub-int/2addr v11, v1

    mul-int v12, v4, v7

    sub-int/2addr v11, v12

    if-gez v11, :cond_c

    .line 398
    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 399
    return v18

    .line 402
    :cond_c
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_8
    if-ge v11, v7, :cond_f

    .line 404
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 410
    .local v15, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v13, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v25

    aget v13, v13, v25

    packed-switch v13, :pswitch_data_2

    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move-object v6, v15

    move v2, v1

    .end local v1    # "tmpNext":I
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .end local v15    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .local v2, "tmpNext":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v6, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .local v13, "arraySize":I
    .local v25, "totalSize":I
    .local v29, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v31, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    goto/16 :goto_a

    .line 515
    .end local v13    # "arraySize":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    .local v6, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v7    # "arraySize":I
    .restart local v15    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :pswitch_10
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    .line 516
    .local v13, "doubleArray":[D
    add-int/lit8 v25, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v25, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v25, v0, v25

    add-int/lit8 v27, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v26, v0, v26

    add-int/lit8 v29, v27, 0x1

    .end local v27    # "tmpNext":I
    .local v29, "tmpNext":I
    aget-byte v27, v0, v27

    move/from16 v30, v1

    move-object/from16 v31, v2

    const/4 v1, 0x4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    new-array v2, v1, [B

    aput-byte v30, v2, v19

    aput-byte v25, v2, v24

    aput-byte v26, v2, v17

    aput-byte v27, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 519
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v25

    div-double v1, v1, v25

    aput-wide v1, v13, v11

    .line 520
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move/from16 v1, v29

    move-object/from16 v29, v3

    move-object v3, v14

    goto/16 :goto_a

    .line 506
    .end local v13    # "doubleArray":[D
    .end local v29    # "tmpNext":I
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .restart local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    :pswitch_11
    move-object/from16 v31, v2

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 507
    .local v2, "doubleArray":[D
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v13, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v25, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v25    # "tmpNext":I
    aget-byte v13, v0, v13

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v25, v0, v25

    move/from16 v27, v1

    move-object/from16 v29, v3

    const/4 v1, 0x4

    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v29, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    new-array v3, v1, [B

    aput-byte v19, v3, v19

    aput-byte v27, v3, v24

    aput-byte v13, v3, v17

    aput-byte v25, v3, v16

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    move/from16 v25, v4

    .end local v4    # "totalSize":I
    .local v25, "totalSize":I
    int-to-double v3, v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v32

    div-double v3, v3, v32

    aput-wide v3, v2, v11

    .line 511
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move/from16 v1, v26

    goto/16 :goto_a

    .line 497
    .end local v25    # "totalSize":I
    .end local v26    # "tmpNext":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v4    # "totalSize":I
    :pswitch_12
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 498
    .local v2, "doubleArray":[D
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    move/from16 v26, v1

    const/4 v13, 0x4

    new-array v1, v13, [B

    aput-byte v19, v1, v19

    aput-byte v19, v1, v24

    aput-byte v26, v1, v17

    aput-byte v3, v1, v16

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    move v13, v4

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    int-to-double v3, v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v26

    div-double v3, v3, v26

    aput-wide v3, v2, v11

    .line 502
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    move-object v4, v6

    move v1, v13

    move-object v3, v14

    move v13, v7

    goto/16 :goto_a

    .line 488
    .end local v13    # "tmpNext":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_13
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 489
    .local v2, "floatArray":[F
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, v0, v4

    add-int/lit8 v26, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v13, v0, v13

    move/from16 v27, v1

    move/from16 v30, v3

    const/4 v1, 0x4

    new-array v3, v1, [B

    aput-byte v27, v3, v19

    aput-byte v30, v3, v24

    aput-byte v4, v3, v17

    aput-byte v13, v3, v16

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    aput v1, v2, v11

    .line 493
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move/from16 v1, v26

    goto/16 :goto_a

    .line 479
    .end local v25    # "totalSize":I
    .end local v26    # "tmpNext":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_14
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 480
    .local v2, "floatArray":[F
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, v0, v4

    move/from16 v26, v1

    move/from16 v27, v3

    const/4 v1, 0x4

    new-array v3, v1, [B

    aput-byte v19, v3, v19

    aput-byte v26, v3, v24

    aput-byte v27, v3, v17

    aput-byte v4, v3, v16

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    aput v1, v2, v11

    .line 484
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-object v4, v6

    move v1, v13

    move-object v3, v14

    move v13, v7

    goto/16 :goto_a

    .line 470
    .end local v13    # "tmpNext":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_15
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 471
    .local v2, "floatArray":[F
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    move/from16 v26, v1

    const/4 v13, 0x4

    new-array v1, v13, [B

    aput-byte v19, v1, v19

    aput-byte v19, v1, v24

    aput-byte v26, v1, v17

    aput-byte v3, v1, v16

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    move v13, v4

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    aput v1, v2, v11

    .line 475
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-object v4, v6

    move v1, v13

    move-object v3, v14

    move v13, v7

    goto/16 :goto_a

    .line 459
    .end local v13    # "tmpNext":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_16
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 460
    .local v2, "longArray":[J
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v3, v0, v3

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, v0, v4

    add-int/lit8 v26, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v26    # "tmpNext":I
    aget-byte v27, v0, v13

    add-int/lit8 v13, v26, 0x1

    .end local v26    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v26, v0, v26

    add-int/lit8 v30, v13, 0x1

    .end local v13    # "tmpNext":I
    .local v30, "tmpNext":I
    aget-byte v32, v0, v13

    add-int/lit8 v13, v30, 0x1

    .end local v30    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v30, v0, v30

    add-int/lit8 v33, v13, 0x1

    .end local v13    # "tmpNext":I
    .local v33, "tmpNext":I
    aget-byte v34, v0, v13

    move/from16 v21, v1

    const/16 v13, 0x8

    new-array v1, v13, [B

    aput-byte v21, v1, v19

    aput-byte v3, v1, v24

    aput-byte v4, v1, v17

    aput-byte v27, v1, v16

    const/16 v28, 0x4

    aput-byte v26, v1, v28

    aput-byte v32, v1, v23

    aput-byte v30, v1, v20

    aput-byte v34, v1, v22

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    move-object/from16 v21, v14

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-int v1, v13

    int-to-long v13, v1

    div-long/2addr v3, v13

    aput-wide v3, v2, v11

    .line 466
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    move-object v4, v6

    move v13, v7

    move-object/from16 v3, v21

    move/from16 v1, v33

    goto/16 :goto_a

    .line 437
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v33    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v3, "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_17
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object/from16 v21, v14

    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 438
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 439
    .local v2, "longArray":[J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v4

    add-int/lit8 v13, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v13, v0, v13

    add-int/lit8 v21, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v14, v0, v14

    add-int/lit8 v27, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v21, v0, v21

    move/from16 v30, v1

    move-object/from16 v26, v2

    const/16 v1, 0x8

    .end local v2    # "longArray":[J
    .local v26, "longArray":[J
    new-array v2, v1, [B

    aput-byte v19, v2, v19

    aput-byte v19, v2, v24

    aput-byte v19, v2, v17

    aput-byte v19, v2, v16

    const/16 v28, 0x4

    aput-byte v30, v2, v28

    aput-byte v13, v2, v23

    aput-byte v14, v2, v20

    aput-byte v21, v2, v22

    .line 440
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    .line 439
    invoke-virtual {v4, v13, v14}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v13

    aput-wide v13, v26, v11

    move-object v4, v6

    move v13, v7

    move/from16 v1, v27

    goto/16 :goto_a

    .line 449
    .end local v26    # "longArray":[J
    .end local v27    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    :cond_d
    move v2, v1

    const/16 v1, 0x8

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 450
    .local v4, "intArray":[I
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v2, v0, v2

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v13, v0, v13

    add-int/lit8 v21, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v14, v0, v14

    add-int/lit8 v26, v21, 0x1

    .end local v21    # "tmpNext":I
    .local v26, "tmpNext":I
    aget-byte v21, v0, v21

    move/from16 v30, v2

    const/4 v1, 0x4

    new-array v2, v1, [B

    aput-byte v30, v2, v19

    aput-byte v13, v2, v24

    aput-byte v14, v2, v17

    aput-byte v21, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v13

    double-to-int v2, v13

    div-int/2addr v1, v2

    aput v1, v4, v11

    .line 454
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-object v4, v6

    move v13, v7

    move/from16 v1, v26

    goto/16 :goto_a

    .line 428
    .end local v25    # "totalSize":I
    .end local v26    # "tmpNext":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    :pswitch_18
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v3, v14

    move v2, v1

    .end local v1    # "tmpNext":I
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v4    # "totalSize":I
    .local v2, "tmpNext":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 429
    .local v1, "intArray":[I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v0, v2

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v4, v0, v4

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v13, v0, v13

    move/from16 v21, v2

    move/from16 v26, v4

    const/4 v2, 0x4

    new-array v4, v2, [B

    aput-byte v19, v4, v19

    aput-byte v21, v4, v24

    aput-byte v26, v4, v17

    aput-byte v13, v4, v16

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move-object v4, v6

    move v13, v7

    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v13, "arraySize":I
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v6

    double-to-int v6, v6

    div-int/2addr v2, v6

    aput v2, v1, v11

    .line 433
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move v1, v14

    goto/16 :goto_a

    .line 419
    .end local v13    # "arraySize":I
    .end local v14    # "tmpNext":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v1, "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    .restart local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v7    # "arraySize":I
    :pswitch_19
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move v2, v1

    .end local v1    # "tmpNext":I
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .local v2, "tmpNext":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v13    # "arraySize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 420
    .local v1, "intArray":[I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v2, v0, v2

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v6, v0, v6

    move/from16 v21, v2

    const/4 v14, 0x4

    new-array v2, v14, [B

    aput-byte v19, v2, v19

    aput-byte v19, v2, v24

    aput-byte v21, v2, v17

    aput-byte v6, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move-object v6, v15

    .end local v15    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .local v6, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v14

    double-to-int v14, v14

    div-int/2addr v2, v14

    aput v2, v1, v11

    .line 424
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    move v1, v7

    goto :goto_a

    .line 413
    .end local v13    # "arraySize":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v1, "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    .local v6, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v7, "arraySize":I
    .restart local v15    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :pswitch_1a
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move-object v6, v15

    move v2, v1

    .end local v1    # "tmpNext":I
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .end local v15    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .local v2, "tmpNext":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v6, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .restart local v13    # "arraySize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 414
    .local v1, "intArray":[I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v2, v0, v2

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v14

    double-to-int v14, v14

    div-int/2addr v2, v14

    aput v2, v1, v11

    .line 415
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move v1, v7

    .line 524
    .end local v6    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .end local v7    # "tmpNext":I
    .local v1, "tmpNext":I
    :goto_a
    move-object v14, v3

    move-object v6, v4

    move v7, v13

    move/from16 v4, v25

    move-object/from16 v3, v29

    move-object/from16 v2, v31

    goto/16 :goto_9

    .line 402
    .end local v13    # "arraySize":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    .local v6, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v7, "arraySize":I
    :cond_e
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move-object v3, v14

    move v2, v1

    .end local v1    # "tmpNext":I
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .local v2, "tmpNext":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v13    # "arraySize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v25

    move-object/from16 v3, v29

    move-object/from16 v2, v31

    goto/16 :goto_8

    .end local v13    # "arraySize":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v1    # "tmpNext":I
    .local v2, "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v4, "totalSize":I
    .restart local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v7    # "arraySize":I
    :cond_f
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move/from16 v25, v4

    move-object v4, v6

    move v13, v7

    move-object v3, v14

    .line 529
    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .end local v11    # "j":I
    .local v4, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v13    # "arraySize":I
    .restart local v25    # "totalSize":I
    .restart local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    .line 531
    .local v6, "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v11

    aget v7, v7, v11

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_c

    .line 556
    :pswitch_1b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [D

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    goto :goto_c

    .line 550
    :pswitch_1c
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [F

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 551
    goto :goto_c

    .line 544
    :pswitch_1d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [J

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 545
    goto :goto_c

    .line 536
    :pswitch_1e
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 537
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [J

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_c

    .line 539
    :cond_10
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    invoke-virtual {v7, v11, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 541
    nop

    .line 560
    .end local v6    # "r":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    :goto_c
    goto/16 :goto_b

    .line 358
    .end local v4    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v5    # "objMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "arraySize":I
    .end local v25    # "totalSize":I
    .end local v29    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .local v6, "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v7    # "arraySize":I
    :cond_11
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move-object v4, v6

    move v13, v7

    .line 564
    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v3    # "repeatSyntax":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .end local v10    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;
    .restart local v4    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v13    # "arraySize":I
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    :cond_12
    move-object v6, v4

    move v7, v13

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v24

    move-object/from16 v2, v31

    goto/16 :goto_3

    .line 244
    .end local v4    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v13    # "arraySize":I
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .restart local v7    # "arraySize":I
    :cond_13
    move-object/from16 v31, v2

    move-object v4, v6

    .line 567
    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .end local v6    # "syntaxTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;"
    .end local v7    # "arraySize":I
    .end local v8    # "temp":I
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    goto :goto_d

    .line 208
    .end local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    :cond_14
    move-object/from16 v31, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v24, v5

    .line 569
    .end local v2    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    .restart local v31    # "syntaxListTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v19

    .line 571
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_15

    goto :goto_e

    .line 575
    :cond_15
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, v0, v1

    .line 576
    .local v1, "data":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move v1, v3

    .line 579
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tmpNext":I
    .local v1, "tmpNext":I
    :goto_d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    .line 581
    return v1

    .line 572
    .restart local v2    # "name":Ljava/lang/String;
    :cond_16
    :goto_e
    return v18

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final parseForRequestType([BI)I
    .locals 5
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 688
    move v0, p2

    .line 690
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-gez v1, :cond_0

    .line 691
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 692
    return v2

    .line 695
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v1, "tmpNext":I
    aget-byte v0, p1, v0

    .line 697
    .local v0, "requestType":I
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 705
    .local v3, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    invoke-interface {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 706
    invoke-interface {v3, p1, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v1

    .line 707
    goto :goto_1

    .line 709
    .end local v3    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    :cond_2
    goto :goto_0

    .line 711
    :cond_3
    :goto_1
    return v1

    .line 698
    :cond_4
    :goto_2
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 700
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    .line 699
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 701
    return v2
.end method

.method public final pause()V
    .locals 0

    .line 721
    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 814
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 817
    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 740
    return-void
.end method

.method public final resume()V
    .locals 0

    .line 730
    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "data"    # [B

    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    .line 192
    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 193
    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 4
    .param p1, "type"    # B
    .param p2, "data"    # [B

    .line 620
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 622
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 623
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 624
    return v2

    .line 627
    :cond_0
    return v3
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 5
    .param p1, "category"    # B
    .param p2, "libType"    # B
    .param p3, "dataType"    # B
    .param p4, "data"    # [B

    .line 669
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    const/4 v4, 0x2

    aput-byte p2, v1, v4

    const/4 v4, 0x3

    aput-byte p3, v1, v4

    invoke-virtual {v0, p4, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 672
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 673
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 674
    return v2

    .line 677
    :cond_0
    return v3
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 5
    .param p1, "libType"    # B
    .param p2, "dataType"    # B
    .param p3, "data"    # [B

    .line 643
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x3f

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte p1, v1, v3

    const/4 v4, 0x2

    aput-byte p2, v1, v4

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 646
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 647
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 648
    return v2

    .line 651
    :cond_0
    return v3
.end method

.method protected final terminateManager()V
    .locals 0

    .line 92
    return-void
.end method
