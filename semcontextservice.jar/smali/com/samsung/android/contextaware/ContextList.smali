.class public Lcom/samsung/android/contextaware/ContextList;
.super Ljava/lang/Object;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextList$ContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/ContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/ContextList;
    .locals 2

    .line 353
    const-class v0, Lcom/samsung/android/contextaware/ContextList;

    monitor-enter v0

    .line 354
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Lcom/samsung/android/contextaware/ContextList;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/ContextList;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    .line 357
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    return-object v0

    .line 357
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6
    .param p1, "serviceOrdinal"    # I

    .line 389
    const-string v0, ""

    .line 391
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 392
    .local v4, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 393
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 394
    goto :goto_1

    .line 391
    .end local v4    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 401
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v1

    .line 400
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 404
    :cond_2
    return-object v0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .param p1, "serviceCode"    # Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "ordinal":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 372
    .local v4, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    .line 374
    goto :goto_1

    .line 371
    .end local v4    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_1
    :goto_1
    return v0
.end method
