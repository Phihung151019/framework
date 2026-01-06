.class public final synthetic Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    iput p2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->$r8$lambda$OEaKQwQ8QuY6mQmJzkV32FbdWc8(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;IZ)V

    return-void
.end method
