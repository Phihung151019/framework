.class final enum Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$1;
.super Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
.source "UwbFactoryCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method getMessageId(Ljava/lang/String;)I
    .locals 1
    .param p1, "sData"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    return v0
.end method
