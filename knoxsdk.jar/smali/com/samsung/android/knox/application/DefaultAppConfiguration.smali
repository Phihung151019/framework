.class public Lcom/samsung/android/knox/application/DefaultAppConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist mComponentName:Landroid/content/ComponentName;

.field public greylist mTaskType:Landroid/content/Intent;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/DefaultAppConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/DefaultAppConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    iput-object p2, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public greylist getTaskType()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    return-object p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public greylist setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public greylist setTaskType(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mTaskType:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    return-void
.end method
