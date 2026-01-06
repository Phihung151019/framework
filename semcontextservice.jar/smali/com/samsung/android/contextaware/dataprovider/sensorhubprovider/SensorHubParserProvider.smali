.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.source "SensorHubParserProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;


# static fields
.field private static final EXTENDED_LIB_TYPE:I = 0x7

.field private static final PACKET_MAX_SIZE:I = 0x4000

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private mApStatus:I

.field private mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

.field private final mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

.field private mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApStatus(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLibParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparse(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;[BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([BI)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 80
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-void
.end method

.method private checkExtendedLibType(B)Z
    .locals 1
    .param p1, "type"    # B

    .line 394
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 395
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkInstruction(B)Z
    .locals 6
    .param p1, "inst"    # B

    .line 377
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 378
    .local v4, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne v5, p1, :cond_0

    .line 379
    const/4 v0, 0x1

    return v0

    .line 377
    .end local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_1
    return v2
.end method

.method private checkLibType(B)Z
    .locals 6
    .param p1, "type"    # B

    .line 408
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 409
    .local v4, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne v5, p1, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 408
    .end local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_1
    return v2
.end method

.method private checkPacketSize([B)I
    .locals 2
    .param p1, "packet"    # [B

    .line 253
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 254
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    .line 255
    :cond_0
    array-length v0, p1

    const/16 v1, 0x4000

    if-le v0, v1, :cond_1

    .line 256
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_OVERFLOW:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0

    .line 258
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;
    .locals 2

    .line 71
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    .line 75
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    return-object v0

    .line 75
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private parse([BI)I
    .locals 7
    .param p1, "dataPacket"    # [B
    .param p2, "length"    # I

    .line 185
    new-array v0, p2, [B

    .line 186
    .local v0, "packet":[B
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkPacketSize([B)I

    move-result v1

    .line 191
    .local v1, "checkResult":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 192
    return v1

    .line 195
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_2
    :goto_0
    const-string v3, "Packet is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 202
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 203
    array-length v4, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x2

    if-gez v4, :cond_3

    .line 204
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    return v4

    .line 207
    :cond_3
    aget-byte v4, v0, v3

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkInstruction(B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 208
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 209
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    .line 208
    return v4

    .line 211
    :cond_4
    aget-byte v4, v0, v3

    .line 213
    .local v4, "inst":B
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkExtendedLibType(B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v5

    return v5

    .line 217
    :cond_5
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v0, v3

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->checkLibType(B)Z

    move-result v5

    if-nez v5, :cond_6

    .line 218
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v5

    return v5

    .line 220
    :cond_6
    aget-byte v5, v0, v3

    .line 222
    .local v5, "type":B
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v4, v5, v0, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseData(BB[BI)I

    move-result v3

    .line 223
    if-gez v3, :cond_7

    .line 224
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    return v6

    .line 226
    .end local v4    # "inst":B
    .end local v5    # "type":B
    :cond_7
    goto :goto_2

    .line 228
    .end local v3    # "i":I
    :cond_8
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    return v3
.end method

.method private parseData(BB[BI)I
    .locals 4
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .line 276
    move v0, p4

    .line 277
    .local v0, "tmpNext":I
    const/4 v1, 0x0

    .line 279
    .local v1, "parsingResult":I
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->checkParserMap()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseNotiPowerData(BB[BI)I

    move-result v1

    .line 286
    if-lez v1, :cond_1

    .line 287
    return v1

    .line 290
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseDebugMsg(BB[BI)I

    move-result v1

    .line 291
    if-lez v1, :cond_2

    .line 292
    return v1

    .line 295
    :cond_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-eq p1, v2, :cond_3

    .line 296
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_INSTRUCTION_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 297
    return v3

    .line 300
    :cond_3
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_4

    .line 301
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    .line 302
    :cond_4
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_EXT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_5

    .line 303
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    .line 304
    :cond_5
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY_REQUEST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_6

    .line 305
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    invoke-virtual {v2, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->parse([BI)I

    move-result v0

    goto :goto_0

    .line 307
    :cond_6
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 308
    const/4 v0, -0x1

    .line 311
    :goto_0
    return v0

    .line 280
    :cond_7
    :goto_1
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LIBRARY_PARSER_OBJECT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 281
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 282
    return v3
.end method

.method private parseDebugMsg(BB[BI)I
    .locals 3
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .line 356
    move v0, p4

    .line 357
    .local v0, "tmpNext":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    .line 358
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    .line 360
    .local v1, "debugMsgParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_SENSORHUB_DEBUG_MSG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v1, :cond_0

    .line 363
    invoke-interface {v1, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    .line 366
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method private parseNotiPowerData(BB[BI)I
    .locals 3
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "packet"    # [B
    .param p4, "next"    # I

    .line 329
    move v0, p4

    .line 330
    .local v0, "tmpNext":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    .line 331
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    .line 333
    .local v1, "notiParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    if-ne p2, v2, :cond_0

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1, p3, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v2

    return v2

    .line 338
    :cond_0
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public final getExtLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final getRequestLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    .line 130
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAESHubEvtHler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 134
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 137
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 138
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z

    .line 145
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 146
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 147
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 150
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 151
    return-void
.end method

.method public final initializePreparedSubCollection()V
    .locals 0

    .line 472
    return-void
.end method

.method public final parseForScenarioTesting([B)V
    .locals 2
    .param p1, "packet"    # [B

    .line 239
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parse([BI)I

    move-result v0

    .line 240
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 241
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public final terminate()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 162
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->unregisterListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    .line 167
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 168
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mExtLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 169
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mRequestLibParser:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    .line 171
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 173
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 175
    :cond_1
    return-void
.end method

.method public final updateApPowerStatus(IJ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .line 453
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    .line 455
    const-string v0, "AP_NONE"

    .line 456
    .local v0, "apStatus":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2e

    if-ne v1, v2, :cond_0

    .line 457
    const-string v0, "AP_SLEEP"

    goto :goto_0

    .line 458
    :cond_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->mApStatus:I

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    .line 459
    const-string v0, "AP_WAKEUP"

    .line 461
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 462
    return-void
.end method
