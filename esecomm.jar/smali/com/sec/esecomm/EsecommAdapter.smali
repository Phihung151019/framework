.class public Lcom/sec/esecomm/EsecommAdapter;
.super Ljava/lang/Object;
.source "EsecommAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EsecommAdapter"

.field private static blacklist Target_Except:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist ref:Lcom/sec/esecomm/EsecommAdapter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/esecomm/EsecommAdapter;->ref:Lcom/sec/esecomm/EsecommAdapter;

    .line 171
    const-string v0, "gta4xls"

    const-string v1, "gta4xlswifi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/esecomm/EsecommAdapter;->Target_Except:Ljava/util/List;

    .line 183
    const-string v0, "ucm_esecomm_adapter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 184
    const-string v0, "31"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const-string v0, "ro.product.system.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/esecomm/EsecommAdapter;->check_project(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "ucm_tlc_aidl_api"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "ucm_tlc_hidl_api"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EsecommAdapter"

    const-string v1, "EsecommAdapter : new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method private static blacklist check_project(Ljava/lang/String;)Z
    .locals 3
    .param p0, "product"    # Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/sec/esecomm/EsecommAdapter;->Target_Except:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const/4 v0, 0x0

    return v0

    .line 178
    .end local v1    # "i":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized blacklist getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;
    .locals 2

    const-class v0, Lcom/sec/esecomm/EsecommAdapter;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sec/esecomm/EsecommAdapter;->ref:Lcom/sec/esecomm/EsecommAdapter;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/sec/esecomm/EsecommAdapter;

    invoke-direct {v1}, Lcom/sec/esecomm/EsecommAdapter;-><init>()V

    sput-object v1, Lcom/sec/esecomm/EsecommAdapter;->ref:Lcom/sec/esecomm/EsecommAdapter;

    .line 51
    :cond_0
    sget-object v1, Lcom/sec/esecomm/EsecommAdapter;->ref:Lcom/sec/esecomm/EsecommAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private native blacklist tzEsecommCommunicate(Lcom/sec/esecomm/TARequest;Lcom/sec/esecomm/TAResponse;)Z
.end method

.method private native blacklist tzEsecommDeriveCEKey([B)[B
.end method

.method private native blacklist tzEsecommGetODEKey([B)[B
.end method

.method private native blacklist tzEsecommGetTaProfile()[B
.end method

.method private native blacklist tzEsecommSaveODEKey([B)[B
.end method

.method private native blacklist tzEsecommTzAccessTest()I
.end method

.method private native blacklist tzEsecommTzLoadTa()I
.end method

.method private native blacklist tzEsecommTzLoadTaWithParam(B)I
.end method

.method private native blacklist tzEsecommTzUnloadTa()I
.end method

.method private native blacklist tzEsecommWrapSessionKey([B)[B
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public blacklist deriveCEKey([B)[B
    .locals 3
    .param p1, "input"    # [B

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "ret":[B
    invoke-direct {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommDeriveCEKey([B)[B

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const-string v1, "EsecommAdapter"

    const-string v2, "native tzEsecommDeriveCEKey returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-object v0
.end method

.method public blacklist getODEKey([B)[B
    .locals 3
    .param p1, "input"    # [B

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "ret":[B
    invoke-direct {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommGetODEKey([B)[B

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    const-string v1, "EsecommAdapter"

    const-string v2, "native getODEKey returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-object v0
.end method

.method public blacklist getTaProfile()[B
    .locals 3

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":[B
    invoke-direct {p0}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommGetTaProfile()[B

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    const-string v1, "EsecommAdapter"

    const-string v2, "native tzEsecommGetTaProfile returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-object v0
.end method

.method public blacklist loadTa()I
    .locals 1

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/esecomm/EsecommAdapter;->loadTa(Z)I

    move-result v0

    return v0
.end method

.method public blacklist loadTa(Z)I
    .locals 2
    .param p1, "bToUseEseApplet"    # Z

    .line 106
    move v0, p1

    .line 107
    .local v0, "toUseEseApplet":B
    invoke-direct {p0, v0}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommTzLoadTaWithParam(B)I

    move-result v1

    return v1
.end method

.method public blacklist processTACommand(Lcom/sec/esecomm/TARequest;)Lcom/sec/esecomm/TAResponse;
    .locals 3
    .param p1, "req"    # Lcom/sec/esecomm/TARequest;

    .line 137
    new-instance v0, Lcom/sec/esecomm/TAResponse;

    invoke-direct {v0}, Lcom/sec/esecomm/TAResponse;-><init>()V

    .line 139
    .local v0, "resp":Lcom/sec/esecomm/TAResponse;
    invoke-direct {p0, p1, v0}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommCommunicate(Lcom/sec/esecomm/TARequest;Lcom/sec/esecomm/TAResponse;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    return-object v0

    .line 143
    :cond_0
    const-string v1, "EsecommAdapter"

    const-string v2, "native tzEsecommCommunicate failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist saveODEKey([B)[B
    .locals 3
    .param p1, "input"    # [B

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "ret":[B
    invoke-direct {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommSaveODEKey([B)[B

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    const-string v1, "EsecommAdapter"

    const-string v2, "native saveODEKey returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-object v0
.end method

.method public blacklist tzAccessTest()I
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommTzAccessTest()I

    move-result v0

    return v0
.end method

.method public blacklist unloadTa()I
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommTzUnloadTa()I

    move-result v0

    return v0
.end method

.method public blacklist wrapSessionKey([B)[B
    .locals 3
    .param p1, "input"    # [B

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "ret":[B
    invoke-direct {p0, p1}, Lcom/sec/esecomm/EsecommAdapter;->tzEsecommWrapSessionKey([B)[B

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const-string v1, "EsecommAdapter"

    const-string v2, "native tzEsecommWrapSessionKey returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-object v0
.end method
