.class Lcom/samsung/sdk/sperf/Boost;
.super Ljava/lang/Object;
.source "Boost.java"


# static fields
.field private static final ERROR:I = -0x1

.field private static final NATIVE_BOOST_LIBRARY_NAME:Ljava/lang/String; = "perfsdk.performance.samsung"

.field private static isLoadLib:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .locals 3

    .line 8
    sget-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "perfsdk.performance.samsung"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    sput-boolean v1, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Library has problem"

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    sput-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    goto :goto_1

    .line 14
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 15
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ERROR : Library load fail.. not exist or check permission"

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 17
    sput-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    .line 22
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 23
    :goto_1
    sget-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    return v0
.end method

.method public static native releaseBoost()I
.end method

.method public static native releaseBoost(I)I
.end method

.method public static releaseNativeBoost()I
    .locals 6

    .line 95
    sget-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    if-nez v0, :cond_0

    .line 96
    const-string v0, "ERR : Native Library load Fail... request boost not available"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 97
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_0
    invoke-static {}, Lcom/samsung/sdk/sperf/Boost;->releaseBoost()I

    .line 100
    const-string v0, "release all boost"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_0
    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ge v0, v1, :cond_4

    .line 102
    invoke-static {v0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getBoostResource(I)Lcom/samsung/sdk/sperf/BoostResource;

    move-result-object v1

    .line 103
    .local v1, "resource":Lcom/samsung/sdk/sperf/BoostResource;
    if-nez v1, :cond_1

    .line 104
    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/sdk/sperf/BoostResource;->getDefaultLevel()I

    move-result v3

    .line 107
    .local v3, "defaultLevel":I
    const v4, 0x3d8aee6

    if-eq v3, v4, :cond_3

    .line 108
    invoke-static {v3, v0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getRealBoostLevel(II)I

    move-result v3

    .line 109
    invoke-static {v0}, Lcom/samsung/sdk/sperf/CustomParams;->getBoostType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 110
    invoke-static {}, Lcom/samsung/sdk/sperf/PerformanceManager;->getPid()I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {v0, v3, v2}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    .line 101
    .end local v1    # "resource":Lcom/samsung/sdk/sperf/BoostResource;
    .end local v3    # "defaultLevel":I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "type":I
    :cond_4
    return v2
.end method

.method public static releaseNativeBoost(II)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "pid"    # I

    .line 120
    sget-boolean v0, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 121
    const-string v0, "ERR : Native Library load Fail... request boost not available"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getBoostResource(I)Lcom/samsung/sdk/sperf/BoostResource;

    move-result-object v0

    .line 125
    .local v0, "resource":Lcom/samsung/sdk/sperf/BoostResource;
    if-nez v0, :cond_1

    .line 126
    return v1

    .line 129
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/sdk/sperf/BoostResource;->getDefaultLevel()I

    move-result v1

    .line 130
    .local v1, "defaultLevel":I
    const v2, 0x3d8aee6

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 131
    invoke-static {p0}, Lcom/samsung/sdk/sperf/Boost;->releaseBoost(I)I

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {v1, p0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getRealBoostLevel(II)I

    move-result v1

    .line 134
    if-gez p1, :cond_3

    .line 135
    invoke-static {p0, v1, v3}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {p0, v1, p1}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    .line 140
    :goto_0
    const-string v2, "release all boost"

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 141
    return v3
.end method

.method public static native requestBoost(III)I
.end method

.method public static requestNativeBoost(Lcom/samsung/sdk/sperf/BoostObject;)I
    .locals 5
    .param p0, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 37
    const/4 v0, 0x0

    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "timeout":I
    const/4 v2, 0x0

    .line 38
    .local v2, "type":I
    sget-boolean v3, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    if-nez v3, :cond_0

    .line 39
    const-string v3, "ERR : Native Library load Fail... request boost not available"

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 40
    const/4 v3, -0x1

    return v3

    .line 42
    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_4

    .line 49
    invoke-static {p0, v2}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getRealBoostLevel(Lcom/samsung/sdk/sperf/BoostObject;I)I

    move-result v0

    .line 50
    invoke-virtual {p0, v2}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v1

    .line 52
    const v3, 0x3d8aee6

    if-eq v0, v3, :cond_3

    if-eq v1, v3, :cond_3

    .line 53
    const v3, 0x5f5e0ff

    if-ne v1, v3, :cond_1

    .line 54
    const/4 v1, -0x1

    .line 56
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire boost - type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   timeouts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lcom/samsung/sdk/sperf/CustomParams;->getBoostType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 58
    invoke-static {}, Lcom/samsung/sdk/sperf/PerformanceManager;->getPid()I

    move-result v1

    .line 59
    invoke-static {v2, v1}, Lcom/samsung/sdk/sperf/SPerfManager;->startTaskReleaseHandler(II)V

    .line 61
    :cond_2
    invoke-static {v2, v0, v1}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    .line 42
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method public static requestNativeBoostForProcess(Lcom/samsung/sdk/sperf/BoostObject;)I
    .locals 5
    .param p0, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 68
    const/4 v0, 0x0

    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "timeout":I
    const/4 v2, 0x0

    .line 69
    .local v2, "type":I
    sget-boolean v3, Lcom/samsung/sdk/sperf/Boost;->isLoadLib:Z

    if-nez v3, :cond_0

    .line 70
    const-string v3, "ERR : Native Library load Fail... request boost not available"

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 71
    const/4 v3, -0x1

    return v3

    .line 73
    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_3

    .line 80
    invoke-static {p0, v2}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getRealBoostLevel(Lcom/samsung/sdk/sperf/BoostObject;I)I

    move-result v0

    .line 81
    invoke-virtual {p0, v2}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v1

    .line 83
    const v3, 0x3d8aee6

    if-eq v0, v3, :cond_2

    if-eq v1, v3, :cond_2

    .line 84
    const v3, 0x5f5e0ff

    if-ne v1, v3, :cond_1

    .line 85
    const/4 v1, -0x1

    .line 87
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire boost - type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   timeouts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 88
    invoke-static {v2, v0, v1}, Lcom/samsung/sdk/sperf/Boost;->requestBoost(III)I

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static setNativePkgName(Ljava/lang/String;)I
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string v0, "ERR : PkgName is Null.. check it again"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 147
    const/4 v0, -0x1

    return v0

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/samsung/sdk/sperf/Boost;->setPkgName(Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unique Pkg Name set : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public static native setPkgName(Ljava/lang/String;)I
.end method
