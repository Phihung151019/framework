.class public abstract Lcom/samsung/android/hardware/context/provider/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public abstract add()V
.end method

.method public abstract getLastEvent()Ljava/lang/String;
.end method

.method public abstract handleDiedBinder()V
.end method

.method public abstract onBinderDied()V
.end method

.method public abstract parse(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract remove()V
.end method

.method public abstract requestHistoryData()V
.end method

.method public abstract requestToUpdate()V
.end method

.method public abstract setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
.end method

.method public abstract setReferenceData(I[B)Z
.end method
