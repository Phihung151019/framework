.class public abstract Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;
    }
.end annotation


# static fields
.field public static final greylist TAG:Ljava/lang/String; = "KnoxPushServiceCallback"


# instance fields
.field public greylist acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    return-void
.end method


# virtual methods
.method public final greylist getKnoxPushServiceCb()Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;-><init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    return-object v0
.end method

.method public abstract greylist onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract greylist onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method

.method public abstract greylist onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
.end method
