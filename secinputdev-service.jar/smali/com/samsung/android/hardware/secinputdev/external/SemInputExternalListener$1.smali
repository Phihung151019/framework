.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$1;
.super Ljava/util/HashMap;
.source "SemInputExternalListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->LISTENER_DISPLAY_STATE:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    const-string v1, "DisplayStateListenerWrapper"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalListener$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
