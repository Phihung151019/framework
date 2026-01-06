.class public Lcom/samsung/android/camerasdkservice/data/ProcessParameters;
.super Ljava/lang/Object;
.source "ProcessParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/data/ProcessParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private classType:Ljava/lang/Class;

.field private mName:Ljava/lang/String;

.field private value:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p3, "classType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    .local p2, "value":Ljava/io/Serializable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    .line 48
    iput-object p3, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/Class;

    .line 59
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    .line 62
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 130
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    .line 131
    const-class v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    .line 133
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 110
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    return-object v0
.end method

.method public setValue(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    .local p1, "val":Ljava/io/Serializable;, "TT;"
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 141
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string v3, "value : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string v3, "Class : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    .local p0, "this":Lcom/samsung/android/camerasdkservice/data/ProcessParameters;, "Lcom/samsung/android/camerasdkservice/data/ProcessParameters<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->classType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;->value:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
