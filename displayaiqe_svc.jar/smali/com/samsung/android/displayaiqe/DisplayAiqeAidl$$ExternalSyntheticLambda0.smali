.class public final synthetic Lcom/samsung/android/displayaiqe/DisplayAiqeAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;

    invoke-virtual {v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->serviceDied()V

    return-void
.end method
