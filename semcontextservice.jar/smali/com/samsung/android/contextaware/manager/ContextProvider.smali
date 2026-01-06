.class public abstract Lcom/samsung/android/contextaware/manager/ContextProvider;
.super Lcom/samsung/android/contextaware/manager/ContextComponent;
.source "ContextProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# instance fields
.field private mApStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private mPreparedCollection:I

.field private final mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

.field private final mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

.field private mTimeStampForApStatus:J

.field private mVersion:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;-><init>()V

    .line 82
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    .line 83
    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    .line 85
    iput-object p4, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 86
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    .line 87
    return-void
.end method


# virtual methods
.method protected checkFaultDetectionResult()Z
    .locals 1

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public abstract disable()V
.end method

.method protected disableForRestore()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    .line 117
    return-void
.end method

.method protected disableForStop(I)V
    .locals 1
    .param p1, "operation"    # I

    .line 197
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disableForRestore()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    .line 202
    :goto_0
    return-void
.end method

.method protected display()V
    .locals 6

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 375
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 378
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, "i":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    goto :goto_1

    .line 384
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    .end local v3    # "i":Ljava/lang/String;
    goto :goto_0

    .line 387
    :cond_2
    :goto_1
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 391
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 392
    return-void

    .line 372
    .end local v1    # "str":Ljava/lang/StringBuffer;
    :cond_4
    :goto_2
    return-void
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 267
    if-nez p2, :cond_0

    .line 268
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 270
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 269
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->run()V

    goto :goto_0

    .line 275
    :cond_1
    const-string v0, "FAULT_DETECTION result is not success"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 276
    nop

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "Cause"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    :goto_0
    return-void
.end method

.method public abstract enable()V
.end method

.method protected enableForRestore()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    .line 110
    return-void
.end method

.method protected enableForStart(I)V
    .locals 1
    .param p1, "operation"    # I

    .line 181
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enableForRestore()V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    .line 186
    :goto_0
    return-void
.end method

.method public final getAPStatus()I
    .locals 1

    .line 664
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getDependentService()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "dependentService":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->setTimeOutOccurence(Z)V

    .line 217
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    const/4 v2, 0x0

    .line 231
    .local v2, "isRegisterDependentService":Z
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 232
    .local v3, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 233
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v5, v4

    .local v5, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 235
    .local v6, "service":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    const/4 v2, 0x1

    .line 237
    goto :goto_1

    .line 239
    .end local v6    # "service":I
    :cond_1
    goto :goto_0

    .line 241
    .end local v5    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 242
    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 243
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 244
    nop

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 249
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 244
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    return-void

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V

    .line 255
    return-void

    .line 218
    .end local v2    # "isRegisterDependentService":Z
    .end local v3    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 219
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 220
    nop

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 225
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public final getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;
    .locals 0

    .line 608
    return-object p0
.end method

.method public final getContextTypeOfFaultDetection()Ljava/lang/String;
    .locals 1

    .line 580
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContextValueNames()[Ljava/lang/String;
.end method

.method protected getDependentService()Ljava/lang/String;
    .locals 1

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 409
    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 414
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 415
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 416
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "strArray":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 418
    .local v4, "j":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    .end local v4    # "j":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_2
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 423
    .end local v0    # "strArray":[Ljava/lang/String;
    :cond_3
    nop

    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 429
    :cond_5
    return-object v2

    .line 426
    :cond_6
    :goto_1
    const-string v3, "bundle.getStringArray(key) is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 427
    return-object v0

    .line 410
    .end local v1    # "str":Ljava/lang/StringBuffer;
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    const-string v1, "bundle is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 411
    return-object v0

    .line 405
    :cond_8
    :goto_3
    const-string v1, "key is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 406
    return-object v0
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method protected final getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "result"    # I
    .param p2, "cause"    # Ljava/lang/String;

    .line 645
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResultValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "names":[Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 650
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v4

    .line 650
    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    .line 648
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-object v1
.end method

.method public final getFaultDetectionResultValueNames()[Ljava/lang/String;
    .locals 3

    .line 589
    const-string v0, "CheckResult"

    const-string v1, "Cause"

    const-string v2, "Service"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getLooper()Landroid/os/Looper;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.end method

.method protected abstract getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.end method

.method protected getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 1

    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    return-object v0
.end method

.method protected getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 1

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTimeStampForApStatus()J
    .locals 2

    .line 673
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    return-wide v0
.end method

.method protected final getVersion()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    return v0
.end method

.method public final initializePreparedSubCollection()V
    .locals 1

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    .line 572
    return-void
.end method

.method protected final isDisable()Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected final isEnable()Z
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .line 620
    if-nez p2, :cond_0

    .line 621
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 623
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 622
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 624
    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    const-string v1, "CheckResult"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 629
    const-string v1, "Cause"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 631
    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 632
    return-void
.end method

.method protected final notifyFaultDetectionResult()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 337
    const-string v1, "Fault Detection Result is null."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 338
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 343
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 741
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    .line 743
    return-void
.end method

.method protected processApPowerStatus()V
    .locals 2

    .line 505
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->updateApSleep()V

    goto :goto_0

    .line 507
    :cond_0
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->updateApWakeup()V

    .line 510
    :cond_1
    :goto_0
    return-void
.end method

.method protected final registerApPowerObserver()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    .line 448
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 450
    return-void
.end method

.method public final setAPStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 683
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    .line 684
    return-void
.end method

.method protected final setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 711
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    .line 712
    return-void
.end method

.method public start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .line 128
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->initialize()V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    .line 132
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enableForStart(I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerApPowerObserver()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 140
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyFaultDetectionResult()V

    .line 143
    :cond_1
    return-void
.end method

.method public stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .line 155
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterApPowerObserver()V

    .line 159
    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disableForStop(I)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->terminate()V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 167
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyFaultDetectionResult()V

    .line 170
    :cond_1
    return-void
.end method

.method protected final unregisterApPowerObserver()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    .line 464
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    .line 466
    return-void
.end method

.method public updateApPowerStatus(IJ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .line 492
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    .line 493
    iput-wide p2, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->processApPowerStatus()V

    .line 499
    return-void
.end method

.method public final updateApPowerStatusForPreparedCollection()V
    .locals 2

    .line 476
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->processApPowerStatus()V

    .line 481
    return-void
.end method

.method protected updateApReset()V
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->reset()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    .line 547
    return-void
.end method

.method protected updateApSleep()V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->pause()V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    .line 531
    return-void
.end method

.method protected updateApWakeup()V
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->resume()V

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    .line 539
    return-void
.end method

.method public updateSensorHubResetStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .line 520
    const/16 v0, -0x2b

    if-ne p1, v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->reset()V

    .line 523
    :cond_0
    return-void
.end method
