.class Lcom/samsung/android/server/wifi/util/SemPacketReader$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/SemPacketReader;->createAndRegisterFd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$misRunning(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$mhandleInput(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x5

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$munregisterAndDestroyFd(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method
