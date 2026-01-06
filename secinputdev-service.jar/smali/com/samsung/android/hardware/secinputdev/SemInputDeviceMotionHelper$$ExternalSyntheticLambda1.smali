.class public final synthetic Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->lambda$pause$0(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;)V

    return-void
.end method
