.class public Lcom/samsung/android/hardware/context/provider/miscprovider/MiscProvider;
.super Lcom/samsung/android/hardware/context/provider/Provider;
.source "MiscProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public add()V
    .locals 0

    .line 55
    return-void
.end method

.method public getLastEvent()Ljava/lang/String;
    .locals 1

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .line 134
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .line 100
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 66
    return-void
.end method

.method public requestHistoryData()V
    .locals 0

    .line 145
    return-void
.end method

.method public requestToUpdate()V
    .locals 0

    .line 111
    return-void
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 78
    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 122
    const/4 v0, 0x0

    return v0
.end method
