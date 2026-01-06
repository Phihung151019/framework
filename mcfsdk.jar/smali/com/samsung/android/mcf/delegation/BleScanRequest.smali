.class public Lcom/samsung/android/mcf/delegation/BleScanRequest;
.super Ljava/lang/Object;
.source "BleScanRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    }
.end annotation


# static fields
.field public static final API_GET_ALL:Ljava/lang/String; = "getAll"

.field public static final API_GET_ALL_BY_PKG:Ljava/lang/String; = "getAllByPkg"

.field public static final API_GET_COUNT:Ljava/lang/String; = "getScanRequestCount"

.field public static final API_REGISTER:Ljava/lang/String; = "registerScanRequest"

.field public static final API_UNREGISTER:Ljava/lang/String; = "unregisterScanRequest"

.field public static final API_UNREGISTER_ALL:Ljava/lang/String; = "unregisterAll"

.field public static final API_UNREGISTER_ALL_BY_PKG:Ljava/lang/String; = "unregisterAllByPkg"

.field public static final KEY_APP_DATA:Ljava/lang/String; = "appData"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_JSON_STRING:Ljava/lang/String; = "objString"

.field public static final KEY_LIST:Ljava/lang/String; = "reqList"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final KEY_RETURN:Ljava/lang/String; = "return"

.field private static final KEY_SCAN_ACTION:Ljava/lang/String; = "scanAction"

.field public static final KEY_SCAN_ERROR:Ljava/lang/String; = "scanError"

.field private static final KEY_SCAN_OFF_FILTER:Ljava/lang/String; = "bleScanOffFilter"

.field private static final KEY_SCAN_ON_FILTER:Ljava/lang/String; = "bleScanOnFilter"

.field public static final KEY_SCAN_RESULT:Ljava/lang/String; = "scanResults"

.field private static final KEY_SCAN_SETTINGS:Ljava/lang/String; = "scanSettings"

.field private static final TAG:Ljava/lang/String; = "BleScanRequest"

.field public static final URI_API:Landroid/net/Uri;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final requestId:I

.field private final scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

.field private final scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

.field private final screenOffFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final screenOnFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "content://com.samsung.android.mcfserver.provider/api"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestId"    # I
    .param p5, "scanSettings"    # Lcom/samsung/android/mcf/ble/BleScanSettings;
    .param p6, "scanAction"    # Lcom/samsung/android/mcf/delegation/BleScanAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/delegation/BleScanAction;",
            ")V"
        }
    .end annotation

    .line 172
    .local p3, "screenOnFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    .local p4, "screenOffFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    .line 175
    iput-object p3, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    .line 176
    iput-object p4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    .line 177
    iput-object p5, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 178
    iput-object p6, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    .line 179
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanRequest;
    .locals 13
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 275
    const-string v0, "scanAction"

    const-string v1, "scanSettings"

    const-string v2, "bleScanOffFilter"

    const-string v3, "bleScanOnFilter"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    .line 276
    .local v8, "screenOnFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v9, "screenOffFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/ble/BleScanFilter;>;"
    const/4 v4, 0x0

    .line 278
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, -0x1

    .line 279
    .local v5, "requestId":I
    const/4 v6, 0x0

    .line 280
    .local v6, "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    const/4 v7, 0x0

    .line 283
    .local v7, "bleScanAction":Lcom/samsung/android/mcf/delegation/BleScanAction;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v12, v10

    .line 284
    .local v12, "obj":Lorg/json/JSONObject;
    const-string v10, "packageName"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 285
    const-string v10, "requestId"

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    .line 287
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 288
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 289
    .local v3, "onFilters":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 290
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v11

    .line 291
    .local v11, "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    if-eqz v11, :cond_0

    .line 292
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v11    # "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 297
    .end local v3    # "onFilters":Lorg/json/JSONArray;
    .end local v10    # "idx":I
    :cond_1
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 299
    .local v2, "offFilters":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 300
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v10

    .line 301
    .local v10, "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    if-eqz v10, :cond_2

    .line 302
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v10    # "bleScanFilter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v2    # "offFilters":Lorg/json/JSONArray;
    .end local v3    # "idx":I
    :cond_3
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v10, v1

    .end local v6    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    .local v1, "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    goto :goto_2

    .line 307
    .end local v1    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    .restart local v6    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    :cond_4
    move-object v10, v6

    .line 311
    .end local v6    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    .local v10, "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    :goto_2
    :try_start_1
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 312
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v0

    move-object v11, v7

    goto :goto_3

    .line 311
    :cond_5
    move-object v11, v7

    .line 315
    .end local v7    # "bleScanAction":Lcom/samsung/android/mcf/delegation/BleScanAction;
    .local v11, "bleScanAction":Lcom/samsung/android/mcf/delegation/BleScanAction;
    :goto_3
    move v7, v5

    .end local v5    # "requestId":I
    .local v7, "requestId":I
    :try_start_2
    new-instance v5, Lcom/samsung/android/mcf/delegation/BleScanRequest;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    :try_start_3
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/mcf/delegation/BleScanRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v5

    move v5, v7

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "requestId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "requestId":I
    return-object v0

    .line 318
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "requestId":I
    .end local v12    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "requestId":I
    :catch_0
    move-exception v0

    move-object v4, v6

    move v5, v7

    move-object v6, v10

    move-object v7, v11

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "requestId":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "requestId":I
    goto :goto_4

    .end local v5    # "requestId":I
    .restart local v7    # "requestId":I
    :catch_1
    move-exception v0

    move v5, v7

    move-object v6, v10

    move-object v7, v11

    .end local v7    # "requestId":I
    .restart local v5    # "requestId":I
    goto :goto_4

    .end local v11    # "bleScanAction":Lcom/samsung/android/mcf/delegation/BleScanAction;
    .local v7, "bleScanAction":Lcom/samsung/android/mcf/delegation/BleScanAction;
    :catch_2
    move-exception v0

    move-object v6, v10

    goto :goto_4

    .end local v10    # "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    .local v6, "bleScanSettings":Lcom/samsung/android/mcf/ble/BleScanSettings;
    :catch_3
    move-exception v0

    .line 319
    .local v0, "e":Lorg/json/JSONException;
    :goto_4
    const-string v1, "fromJsonString - "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BleScanRequest"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public convertScreenOffFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "scanFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/le/ScanFilter;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 388
    .local v2, "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v2    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_0

    .line 391
    :cond_0
    return-object v0
.end method

.method public covertScreenOnFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "scanFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/le/ScanFilter;>;"
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 373
    .local v2, "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v2    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_0

    .line 376
    :cond_0
    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "requestId"

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v1, "objString"

    invoke-virtual {p0}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .line 254
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxFilterCount()I
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    return v0
.end method

.method public getScanAction()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-object v0
.end method

.method public getScanSettings()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    return-object v0
.end method

.method public getScreenOffFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenOnFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValidRegisterScanInfo()Z
    .locals 4

    .line 398
    const/4 v0, 0x1

    .line 399
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "isValidRegisterScanInfo "

    const-string v3, "BleScanRequest"

    if-eqz v1, :cond_0

    .line 400
    const-string v1, "PackageName is empty"

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    const-string v1, " BleScanFilter is empty"

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-nez v1, :cond_2

    .line 410
    const-string v1, " BleScanSettings is empty"

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-nez v1, :cond_3

    .line 415
    const-string v1, " Scan action is empty"

    invoke-static {v3, v2, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    .line 418
    :cond_3
    return v0
.end method

.method public sendScanError(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, "extraIntent":Landroid/content/Intent;
    const-string v1, "requestId"

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v1, "scanError"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public sendScanResult(Landroid/content/Context;Landroid/bluetooth/le/ScanResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scanResults"    # Landroid/bluetooth/le/ScanResult;

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, "extraIntent":Landroid/content/Intent;
    const-string v1, "requestId"

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v1, "scanResults"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 5

    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 331
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "requestId"

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 336
    .local v1, "onFilters":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 337
    .local v3, "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 338
    nop

    .end local v3    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_0

    .line 339
    :cond_0
    const-string v2, "bleScanOnFilter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    .end local v1    # "onFilters":Lorg/json/JSONArray;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 343
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 344
    .local v1, "offFilters":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 345
    .restart local v3    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    nop

    .end local v3    # "filter":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_1

    .line 347
    :cond_2
    const-string v2, "bleScanOffFilter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    .end local v1    # "offFilters":Lorg/json/JSONArray;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-eqz v1, :cond_4

    .line 351
    const-string v1, "scanSettings"

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-eqz v1, :cond_5

    .line 355
    const-string v1, "scanAction"

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/delegation/BleScanAction;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "toJsonObject : "

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BleScanRequest"

    invoke-static {v4, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "BleScanRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/16 v3, 0x9

    if-nez v1, :cond_0

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "screenOnFilters - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 450
    .local v4, "f":Lcom/samsung/android/mcf/ble/BleScanFilter;
    const-string v5, "\t\t\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    .end local v4    # "f":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_0

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "screenOffFilters - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 457
    .restart local v4    # "f":Lcom/samsung/android/mcf/ble/BleScanFilter;
    const-string v5, "\t\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    .end local v4    # "f":Lcom/samsung/android/mcf/ble/BleScanFilter;
    goto :goto_1

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-eqz v1, :cond_2

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-eqz v1, :cond_3

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
