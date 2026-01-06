.class public Landroidx/car/app/SessionInfoIntentEncoder;
.super Ljava/lang/Object;
.source "SessionInfoIntentEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/SessionInfoIntentEncoder$Api29;
    }
.end annotation


# static fields
.field private static final EXTRA_SESSION_INFO:Ljava/lang/String; = "androidx.car.app.extra.SESSION_INFO_BUNDLE"

.field private static final KEY_DISPLAY_TYPE:Ljava/lang/String; = "display-type"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session-id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static containsSessionInfo(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 84
    const/4 v1, 0x0

    return v1

    .line 87
    :cond_0
    const-string v1, "androidx.car.app.extra.SESSION_INFO_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static decode(Landroid/content/Intent;)Landroidx/car/app/SessionInfo;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string v1, "androidx.car.app.extra.SESSION_INFO_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "sessionInfoBundle":Landroid/os/Bundle;
    const-string v2, "display-type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, "displayType":I
    const-string v3, "session-id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v4, Landroidx/car/app/SessionInfo;

    invoke-direct {v4, v2, v3}, Landroidx/car/app/SessionInfo;-><init>(ILjava/lang/String;)V

    return-object v4

    .line 69
    .end local v1    # "sessionInfoBundle":Landroid/os/Bundle;
    .end local v2    # "displayType":I
    .end local v3    # "sessionId":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected the SessionInfo to be encoded in the bind intent extras, but the extras were null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Landroidx/car/app/SessionInfo;Landroid/content/Intent;)V
    .locals 3
    .param p0, "sessionInfo"    # Landroidx/car/app/SessionInfo;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Landroidx/car/app/SessionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/car/app/SessionInfoIntentEncoder$Api29;->setIdentifier(Landroid/content/Intent;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "sessionInfoBundle":Landroid/os/Bundle;
    const-string v1, "display-type"

    invoke-virtual {p0}, Landroidx/car/app/SessionInfo;->getDisplayType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v1, "session-id"

    invoke-virtual {p0}, Landroidx/car/app/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "androidx.car.app.extra.SESSION_INFO_BUNDLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    return-void
.end method
