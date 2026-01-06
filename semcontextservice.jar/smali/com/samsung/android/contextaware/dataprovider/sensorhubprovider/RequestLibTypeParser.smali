.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/RequestLibTypeParser;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
.source "RequestLibTypeParser.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 36
    move v0, p2

    .line 38
    .local v0, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 39
    .local v4, "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    array-length v5, p1

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    const/4 v6, -0x1

    if-gez v5, :cond_0

    .line 40
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 41
    return v6

    .line 43
    :cond_0
    aget-byte v5, p1, v0

    iget-byte v7, v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    if-eq v5, v7, :cond_1

    .line 44
    nop

    .line 38
    .end local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .restart local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_1
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v1

    .line 48
    .local v1, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v1, :cond_2

    .line 49
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_REGISTERED_SERVICE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    .line 50
    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 52
    return v6

    .line 55
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;->parseForRequestType([BI)I

    move-result v0

    .line 58
    nop

    .line 61
    .end local v1    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .end local v4    # "i":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    :cond_3
    return v0
.end method
