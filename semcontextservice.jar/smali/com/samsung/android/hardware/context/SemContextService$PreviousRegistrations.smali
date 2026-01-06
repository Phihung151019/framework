.class Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;
.super Ljava/lang/Object;
.source "SemContextService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviousRegistrations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;
    }
.end annotation


# instance fields
.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    .line 1417
    return-void
.end method


# virtual methods
.method public addRegistHistory(ZILjava/lang/String;J)V
    .locals 7
    .param p1, "bRegister"    # Z
    .param p2, "serviceType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "currTime"    # J

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "bRegister":Z
    .end local p2    # "serviceType":I
    .end local p3    # "pkgName":Ljava/lang/String;
    .end local p4    # "currTime":J
    .local v2, "bRegister":Z
    .local v3, "serviceType":I
    .local v4, "pkgName":Ljava/lang/String;
    .local v5, "currTime":J
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;-><init>(ZILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1426
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;

    .line 1427
    .local v2, "history":Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;
    iget-boolean v3, v2, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;->mbRegister:Z

    if-eqz v3, :cond_0

    .line 1428
    const-string v3, "+ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1430
    :cond_0
    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    :goto_1
    iget-object v3, v2, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;->mCurrTime:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    iget v3, v2, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;->mServiceType:I

    invoke-static {v3}, Lcom/samsung/android/hardware/context/SemContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    iget-object v3, v2, Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .end local v2    # "history":Lcom/samsung/android/hardware/context/SemContextService$PreviousRegistrations$RegistrationsData;
    goto :goto_0

    .line 1437
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
