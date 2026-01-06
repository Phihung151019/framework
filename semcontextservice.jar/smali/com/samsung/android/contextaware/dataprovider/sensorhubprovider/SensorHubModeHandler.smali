.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "SensorHubModeHandler.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    return-void
.end method

.method private isDuplicatedMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "duplicated":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 92
    .local v6, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v7, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v7, p1

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v7, v8, :cond_0

    .line 93
    goto :goto_2

    .line 95
    :cond_0
    iget-byte v7, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v7, p1

    iget-byte v8, v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    add-int/2addr v0, v5

    .line 91
    .end local v6    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_2
    if-le v0, v5, :cond_3

    move v3, v5

    :cond_3
    return v3
.end method

.method private parse([BILjava/lang/String;)I
    .locals 3
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 156
    move v0, p2

    .line 158
    .local v0, "tmpNext":I
    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 159
    return v2

    .line 162
    :cond_0
    invoke-super {p0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    .line 163
    .local v1, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v1, :cond_1

    .line 164
    return v2

    .line 167
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v0

    .line 169
    return v0
.end method

.method private parseDuplicatedMode(I[BI)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "packet"    # [B
    .param p3, "next"    # I

    .line 114
    move v0, p3

    .line 115
    .local v0, "tmpNext":I
    move v1, p3

    .line 116
    .local v1, "repeateNext":I
    const/4 v2, 0x0

    .line 118
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 119
    .local v7, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v8, v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    sget-object v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->BATCH_MODE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    iget-byte v9, v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_0

    .line 120
    goto :goto_1

    .line 122
    :cond_0
    iget-byte v8, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, p1

    iget-byte v9, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_2

    .line 123
    iget-byte v8, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    invoke-virtual {p0, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    if-nez v2, :cond_1

    .line 125
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 127
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    .line 126
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 128
    return v6

    .line 130
    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v0

    .line 118
    .end local v7    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    :cond_3
    if-ne v0, v1, :cond_4

    .line 135
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 137
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    .line 136
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 138
    return v6

    .line 141
    :cond_4
    return v0
.end method


# virtual methods
.method protected abstract getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected final getParserKey(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, "parserKey":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 183
    .local v4, "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v5, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-eq p1, v5, :cond_0

    .line 184
    goto :goto_1

    .line 186
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    nop

    .line 182
    .end local v4    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .restart local v4    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    nop

    .line 194
    .end local v4    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_2
    return-object v0
.end method

.method protected final isRunning()Z
    .locals 5

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 204
    .local v0, "modeList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, "running":Z
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "mode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 209
    const/4 v4, 0x1

    return v4

    .line 211
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 213
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public final parse([BI)I
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 48
    move v0, p2

    .line 50
    .local v0, "tmpNext":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 51
    return v2

    .line 54
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 55
    return v2

    .line 58
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v1, "tmpNext":I
    aget-byte v0, p1, v0

    .line 60
    .local v0, "mode":I
    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->isDuplicatedMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parseDuplicatedMode(I[BI)I

    move-result v2

    return v2

    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 66
    .local v7, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    iget-byte v8, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    and-int/2addr v8, v0

    iget-byte v9, v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;->value:B

    if-ne v8, v9, :cond_3

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    goto :goto_1

    .line 65
    .end local v7    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$MODE;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 72
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 74
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    .line 73
    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 75
    return v2

    .line 78
    :cond_5
    invoke-direct {p0, p1, v1, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;->parse([BILjava/lang/String;)I

    move-result v2

    return v2
.end method
