.class public abstract Lcom/google/uwb/support/generic/GenericParams;
.super Lcom/google/uwb/support/base/Params;
.source "GenericParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;
    }
.end annotation


# static fields
.field public static final PROTOCOL_NAME:Ljava/lang/String; = "generic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/uwb/support/base/Params;-><init>()V

    return-void
.end method

.method public static isCorrectProtocol(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 37
    const-string v0, "generic"

    invoke-static {p0, v0}, Lcom/google/uwb/support/generic/GenericParams;->isProtocol(Landroid/os/PersistableBundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getProtocolName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "generic"

    return-object v0
.end method
