.class public Lcom/samsung/android/bbccommon/GenericInterface;
.super Ljava/lang/Object;
.source "GenericInterface.java"


# static fields
.field public static final GI_RESULT:Ljava/lang/String; = "result_code"

.field public static final GI_RESULT_INVALID_PARAM:I = -0x2

.field public static final GI_RESULT_NOT_SUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GenericInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callAPI(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)I
    .locals 0

    .line 0
    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x2

    return p0
.end method

.method public static callAPI(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)I
    .locals 0

    .line 0
    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static callAPI(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 15
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 17
    const-string v0, "result_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
