.class public Lcom/samsung/android/mcf/delegation/McfBleDelegation;
.super Ljava/lang/Object;
.source "McfBleDelegation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "McfBleDelegation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/delegation/BleScanRequest;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 153
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/mcf/delegation/BleScanRequest;>;"
    sget-object v3, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const-string v4, "getAllByPkg"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 155
    .local v3, "retBundle":Landroid/os/Bundle;
    const-string v4, "return"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "getAll"

    const-string v6, "McfBleDelegation"

    if-nez v4, :cond_0

    .line 156
    const-string v4, "Failed"

    invoke-static {v6, v5, v4}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object v2

    .line 160
    :cond_0
    const-string v4, "reqList"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 161
    .local v4, "jsonList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 162
    const-string v7, "empty"

    invoke-static {v6, v5, v7}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-object v2

    .line 166
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    .local v6, "json":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v6    # "json":Ljava/lang/String;
    goto :goto_0

    .line 170
    :cond_2
    return-object v2
.end method

.method private static getRegisteredFilterCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->getAll(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "registeredList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/mcf/delegation/BleScanRequest;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    return v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    .line 180
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    .line 181
    .local v3, "r":Lcom/samsung/android/mcf/delegation/BleScanRequest;
    invoke-virtual {v3}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getMaxFilterCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 182
    .end local v3    # "r":Lcom/samsung/android/mcf/delegation/BleScanRequest;
    goto :goto_0

    .line 184
    :cond_1
    return v1
.end method

.method private static isSupported()Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/samsung/android/mcf/common/Feature;->isMcfFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/samsung/android/mcf/delegation/BleScanRequest;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/samsung/android/mcf/delegation/BleScanRequest;

    .line 75
    invoke-static {}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->isValidRegisterScanInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "register"

    const-string v2, "isValidRegisterScanInfo"

    const-string v3, "McfBleDelegation"

    invoke-static {v3, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getMaxFilterCount()I

    move-result v0

    .line 85
    .local v0, "filterCount":I
    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->getRegisteredFilterCount(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 87
    const/4 v2, 0x5

    if-gt v0, v2, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "registerScanRequest"

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 93
    .local v3, "retBundle":Landroid/os/Bundle;
    const-string v4, "return"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 88
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "retBundle":Landroid/os/Bundle;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of filters should be 5 or less : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unregister(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestId"    # I

    .line 117
    invoke-static {}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 121
    :cond_0
    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;-><init>(Landroid/content/Context;I)V

    .line 122
    .local v0, "builder":Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;->build()Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 123
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 124
    .local v3, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const-string v5, "unregisterScanRequest"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 125
    .local v4, "retBundle":Landroid/os/Bundle;
    const-string v5, "return"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static unregister(Landroid/content/Context;Lcom/samsung/android/mcf/delegation/BleScanRequest;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/samsung/android/mcf/delegation/BleScanRequest;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->getRequestId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/mcf/delegation/McfBleDelegation;->unregister(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static unregisterAll(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    const-string v3, "unregisterAllByPkg"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 139
    return-void
.end method
