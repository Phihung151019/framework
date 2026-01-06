.class public Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonkeyCommandReturn"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    .line 72
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    return-object v0
.end method

.method hasMessage()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method wasSuccessful()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->success:Z

    return v0
.end method
