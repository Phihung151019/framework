.class public Lcom/samsung/uwb/support/uci/cmd/TestStopSessionCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "TestStopSessionCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TEST_STOP_SESSION_CMD"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 10
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xd

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 14
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    const-string v0, "TEST_STOP_SESSION_CMD"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
