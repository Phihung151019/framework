.class public final Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
.super Ljava/lang/Object;
.source "BleScanAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/BleScanAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "className"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .locals 2

    .line 230
    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object p0
.end method

.method public setAppData(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .locals 2
    .param p1, "appData"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "appData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object p0
.end method

.method public setFlags(I)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .locals 2
    .param p1, "flags"    # I

    .line 209
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-object p0
.end method
