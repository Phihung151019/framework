.class public Lcom/samsung/android/camera/filter/SemFilterManager;
.super Ljava/lang/Object;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;,
        Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final FILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final FILTER_CATEGORY:Ljava/lang/String; = "category"

.field public static final FILTER_EVENT_ADD:I = 0x0

.field public static final FILTER_EVENT_DELETE:I = 0x1

.field public static final FILTER_EVENT_LOCALE_CHANGE:I = 0x2

.field public static final FILTER_EVENT_RESET:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

.field private static final FILTER_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final FILTER_NAME:Ljava/lang/String; = "name"

.field private static final FILTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.provider.filterprovider"

.field private static final FILTER_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final FILTER_PROJECTION:[Ljava/lang/String;

.field private static final FILTER_TITLE:Ljava/lang/String; = "title"

.field private static final FILTER_TITLE_ID:Ljava/lang/String; = "title_id"

.field private static final FILTER_URI:Landroid/net/Uri;

.field private static final FILTER_VENDOR:Ljava/lang/String; = "vendor"

.field private static final FILTER_VERSION:Ljava/lang/String; = "version"

.field private static final INDEX_FILTER_CATEGORY:I = 0x4

.field private static final INDEX_FILTER_FILE_NAME:I = 0x1

.field private static final INDEX_FILTER_NAME:I = 0x0

.field private static final INDEX_FILTER_PACKAGE_NAME:I = 0x2

.field private static final INDEX_FILTER_TITLE_ID:I = 0x6

.field private static final INDEX_FILTER_VENDOR:I = 0x3

.field private static final INDEX_FILTER_VERSION:I = 0x5

.field private static final MYFILTER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/myfilter"

.field private static final MYFILTER_SEPERATOR:Ljava/lang/String; = "[MYFILTER]"

.field private static final MYFILTER_URI:Landroid/net/Uri;

.field private static final SI_KEY_FILTER_VALUE_GS_NO_EFFECT:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SemFilterManager"

.field private static final TYPE_EFFECT_CUSTOMCOLOR:I = 0x1a9

.field private static final TYPE_EFFECT_DISTORTION_CORRECTION:I = 0x1bf

.field private static final TYPE_EFFECT_FOOD:I = 0x1c2

.field public static final TYPE_FILTER_BASIC:I = 0x64

.field public static final TYPE_FILTER_EXTENDED:I = 0x65
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.5"
    .end annotation
.end field

.field public static final TYPE_FILTER_USER_GENERATED:I = 0x66

.field private static final notiAddUri:Landroid/net/Uri;

.field private static final notiDeleteUri:Landroid/net/Uri;

.field private static final notiLocaleChangeUri:Landroid/net/Uri;


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFilterAddObserver:Landroid/database/ContentObserver;

.field private mFilterDeleteObserver:Landroid/database/ContentObserver;

.field private mLocaleChangeObserver:Landroid/database/ContentObserver;

.field private mObserverHandler:Landroid/os/Handler;

.field private mObserverHandlerThread:Landroid/os/HandlerThread;

.field mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/samsung/android/camera/filter/SemFilterManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 97
    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->BASE_URI:Landroid/net/Uri;

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    .line 103
    const-string v0, "content://com.samsung.android.provider.filterprovider/myfilter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyAdd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    .line 106
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyDelete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    .line 107
    const-string v0, "content://com.samsung.android.provider.filterprovider/notifyLocaleChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    .line 128
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vendor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "version"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 132
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 133
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 134
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 135
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 136
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 137
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 152
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 162
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemFilter ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 170
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$1;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$1;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 188
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$2;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$2;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 206
    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager$3;

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager$3;-><init>(Lcom/samsung/android/camera/filter/SemFilterManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->registerObserver()V

    .line 225
    return-void
.end method

.method private loadFilter()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 429
    const-string v0, "[SemFilterManager] loadFilter()"

    const-string v1, "SemFilterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 431
    .local v2, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_URI:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/camera/filter/SemFilterManager;->FILTER_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 432
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 433
    :try_start_0
    const-string v0, "[SemFilterManager] loadFilter() cursor is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    nop

    .line 487
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_0
    return-object v2

    .line 437
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 439
    .local v4, "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/Resources;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 440
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 441
    .local v7, "filterName":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    goto :goto_0

    .line 444
    :cond_3
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 445
    .local v13, "filterFullName":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    goto :goto_0

    .line 448
    :cond_4
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 450
    goto :goto_0

    .line 455
    :cond_5
    :try_start_2
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 456
    .local v0, "resources":Landroid/content/res/Resources;
    if-nez v0, :cond_6

    .line 457
    iget-object v8, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    move-object v0, v8

    .line 458
    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_6
    const/4 v8, 0x6

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 462
    .local v8, "resId":I
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v8    # "resId":I
    .local v9, "filterTitle":Ljava/lang/String;
    goto :goto_1

    .line 463
    .end local v9    # "filterTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "getResourcesForApplication or getString encounter exception"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    move-object v8, v7

    move-object v9, v8

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v9    # "filterTitle":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "filterIdentifier":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterFullName : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterIdentifier : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterName : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    goto/16 :goto_0

    .line 477
    :cond_7
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "filterVendor":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 479
    goto/16 :goto_0

    .line 481
    :cond_8
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 482
    .local v11, "filterCategory":I
    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 484
    .local v12, "filterVersion":I
    new-instance v5, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 485
    .local v5, "filter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    nop

    .end local v5    # "filter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "filterName":Ljava/lang/String;
    .end local v8    # "filterIdentifier":Ljava/lang/String;
    .end local v9    # "filterTitle":Ljava/lang/String;
    .end local v10    # "filterVendor":Ljava/lang/String;
    .end local v11    # "filterCategory":I
    .end local v12    # "filterVersion":I
    .end local v13    # "filterFullName":Ljava/lang/String;
    goto/16 :goto_0

    .line 487
    .end local v4    # "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/res/Resources;>;"
    :cond_9
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 488
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_a
    return-object v2

    .line 431
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v1
.end method

.method private registerObserver()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiAddUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiDeleteUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/filter/SemFilterManager;->notiLocaleChangeUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 267
    return-void
.end method

.method private unRegisterObserver()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 280
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterAddObserver:Landroid/database/ContentObserver;

    .line 281
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mFilterDeleteObserver:Landroid/database/ContentObserver;

    .line 282
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mLocaleChangeObserver:Landroid/database/ContentObserver;

    .line 283
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    nop

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 244
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 245
    goto :goto_2

    .line 243
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "SemFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopHandler : interrupted - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandlerThread:Landroid/os/HandlerThread;

    .line 244
    iput-object v1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mObserverHandler:Landroid/os/Handler;

    .line 245
    throw v0

    .line 249
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->unRegisterObserver()V

    .line 250
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->close()V

    .line 261
    return-void
.end method

.method public getAvailableFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->loadFilter()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableFilters(I)Ljava/util/List;
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "FilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 357
    :sswitch_0
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "com.samsung.android.provider"

    const-string v3, "Food"

    const/16 v4, 0x1c2

    const-string v5, "Food"

    const-string v6, "SAMSUNG_MOBILE"

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 358
    .local v1, "foodFilter2":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    goto :goto_0

    .line 352
    .end local v1    # "foodFilter2":Lcom/samsung/android/camera/filter/SemFilter;
    :sswitch_1
    new-instance v2, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "CustomColor"

    const/16 v5, 0x1a9

    const-string v6, "Custom Color"

    const-string v7, "SAMSUNG_MOBILE"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 353
    .local v2, "customcolorFilter2":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    goto :goto_0

    .line 365
    .end local v2    # "customcolorFilter2":Lcom/samsung/android/camera/filter/SemFilter;
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableMyFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 341
    :sswitch_3
    new-instance v2, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.samsung.android.provider"

    const-string v4, "SelfieFaceCorrection"

    const/16 v5, 0x1bf

    const-string v6, "Selfie Face Correction"

    const-string v7, "SAMSUNG_MOBILE"

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 342
    .local v2, "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v3, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v10, 0x0

    const-string v4, "com.samsung.android.provider"

    const-string v5, "CustomColor"

    const/16 v6, 0x1a9

    const-string v7, "Custom Color"

    const-string v8, "SAMSUNG_MOBILE"

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 345
    .local v3, "customcolorFilter1":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v4, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v11, 0x0

    const-string v5, "com.samsung.android.provider"

    const-string v6, "Food"

    const/16 v7, 0x1c2

    const-string v8, "Food"

    const-string v9, "SAMSUNG_MOBILE"

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 348
    .local v4, "foodFilter1":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    goto :goto_0

    .line 362
    .end local v2    # "selfieFaceCorrection":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v3    # "customcolorFilter1":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v4    # "foodFilter1":Lcom/samsung/android/camera/filter/SemFilter;
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 370
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_4
        0x65 -> :sswitch_3
        0x66 -> :sswitch_2
        0x1a9 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAvailableMyFilters()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    .line 381
    const-string v0, "Unnamed filter"

    const-string v1, "[SemFilterManager] getAvailableMyFilters()"

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v1, "MyFilterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/camera/filter/SemFilter;>;"
    const/4 v3, 0x0

    .line 385
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/filter/SemFilterManager;->MYFILTER_URI:Landroid/net/Uri;

    const-string v10, "filter_order"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .line 386
    if-nez v3, :cond_1

    .line 387
    const-string v0, "[SemFilterManager] getAvailableMyFilters() cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v3, :cond_0

    .line 412
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_0
    return-object v0

    .line 391
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 393
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 396
    .local v7, "myFilterName":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 397
    goto :goto_0

    .line 399
    :cond_3
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "myFilterFileName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 401
    goto :goto_0

    .line 402
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myFilterName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", myFilterFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v5, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const-string v6, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MYFILTER]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v7

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 404
    .local v5, "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    nop

    .end local v4    # "myFilterFileName":Ljava/lang/String;
    .end local v5    # "Myfilter":Lcom/samsung/android/camera/filter/SemFilter;
    .end local v7    # "myFilterName":Ljava/lang/String;
    goto :goto_0

    .line 411
    :cond_5
    if-eqz v3, :cond_6

    .line 412
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 411
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    .line 412
    goto :goto_1

    .line 414
    :cond_6
    :goto_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 411
    :goto_3
    if-eqz v3, :cond_7

    .line 412
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_7
    throw v0
.end method

.method public getFilter(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/camera/filter/SemFilter;
    .locals 17
    .param p1, "type"    # I
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "filterFileName"    # Ljava/lang/String;
    .param p4, "filterPackageName"    # Ljava/lang/String;

    .line 299
    move/from16 v0, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilter : type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  filterName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  filterFileName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filterPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemFilterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v1, 0x1c2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a9

    if-eq v0, v1, :cond_1

    .line 301
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    const-string v1, "There\'s no filter file"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    return-object v1

    .line 307
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 322
    new-instance v1, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v1

    .line 316
    :sswitch_0
    new-instance v8, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v9, "com.samsung.android.provider"

    const-string v10, "Food"

    const/16 v11, 0x1c2

    const-string v12, "Food"

    const-string v13, "SAMSUNG_MOBILE"

    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v8

    .line 319
    :sswitch_1
    new-instance v9, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v10, "com.samsung.android.provider"

    const-string v11, "CustomColor"

    const/16 v12, 0x1a9

    const-string v13, "Custom Color"

    const-string v14, "SAMSUNG_MOBILE"

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-object v9

    .line 309
    :sswitch_2
    new-instance v7, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MYFILTER]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v8, ""

    const-string v12, ""

    move-object/from16 v11, p2

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v7

    .line 312
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "filterIdentifier":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v10, ""

    move-object/from16 v9, p2

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x66 -> :sswitch_2
        0x1a9 -> :sswitch_1
        0x1c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 499
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mSemFilterManagerCallback:Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;

    .line 500
    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilterManager;->mCallbackHandler:Landroid/os/Handler;

    .line 501
    return-void
.end method
