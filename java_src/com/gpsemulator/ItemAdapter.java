package com.rosteam.gpsemulator;

import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.rosteam.gpsemulator.draglistview.DragItemAdapter;
import com.rosteam.gpsemulator.utils.RegUbic;
import java.util.ArrayList;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
class ItemAdapter extends DragItemAdapter<RegUbic, ViewHolder> {
    public boolean dragging;
    private final OnItemClickListener listener;
    private ItemAdapterClickListener mDeleteListener;
    private boolean mDragOnLongPress;
    private int mGrabHandleId;
    private int mLayoutId;
    private ItemAdapterClickListener mPinListener;
    private int modo = TabFragment.NORMAL;
    private int tipo;

    public static abstract class ItemAdapterClickListener {
        public void onClicked(int i) {
        }
    }

    public interface OnItemClickListener {
        void onItemClick(RegUbic regUbic);
    }

    ItemAdapter(ArrayList<RegUbic> arrayList, int i, int i2, boolean z, int i3, OnItemClickListener onItemClickListener) {
        this.mLayoutId = i;
        this.mGrabHandleId = i2;
        this.mDragOnLongPress = z;
        this.tipo = i3;
        setItemList(arrayList);
        this.listener = onItemClickListener;
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.mLayoutId, viewGroup, false));
    }

    @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int i) {
        super.onBindViewHolder(viewHolder, i);
        String str = ((RegUbic) this.mItemList.get(i)).name;
        if (str == null) {
            str = ((RegUbic) this.mItemList.get(i)).ciudadpais;
        }
        viewHolder.mText.setText(str);
        viewHolder.mEditText.setText(str);
        viewHolder.mEditText.addTextChangedListener(new TextWatcher() { // from class: com.rosteam.gpsemulator.ItemAdapter.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (ItemAdapter.this.dragging) {
                    return;
                }
                RegUbic regUbic = (RegUbic) ItemAdapter.this.mItemList.get(viewHolder.getAbsoluteAdapterPosition());
                String strReplace = editable.toString().replace("+", " ");
                if (regUbic.name != null) {
                    regUbic.name = strReplace;
                } else {
                    regUbic.ciudadpais = strReplace;
                }
                ItemAdapter.this.mItemList.set(viewHolder.getAbsoluteAdapterPosition(), regUbic);
            }
        });
        viewHolder.mDelete.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.ItemAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
                Log.e("BookmarkDelete", "item nro: " + absoluteAdapterPosition + " list size: " + ItemAdapter.this.mItemList.size());
                ItemAdapter.this.mItemList.remove(absoluteAdapterPosition);
                ItemAdapter itemAdapter = ItemAdapter.this;
                itemAdapter.setItemList(itemAdapter.mItemList);
                if (ItemAdapter.this.mDeleteListener != null) {
                    ItemAdapter.this.mDeleteListener.onClicked(absoluteAdapterPosition);
                }
            }
        });
        viewHolder.mPin.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.ItemAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((RegUbic) ItemAdapter.this.mItemList.get(i)).pined = !((RegUbic) ItemAdapter.this.mItemList.get(i)).pined;
                ItemAdapter itemAdapter = ItemAdapter.this;
                itemAdapter.setItemList(itemAdapter.mItemList);
                if (((RegUbic) ItemAdapter.this.mItemList.get(i)).pined) {
                    viewHolder.mPin.setImageResource(R.drawable.ic_pin);
                } else {
                    viewHolder.mPin.setImageResource(R.drawable.ic_pin_unselected);
                }
                if (ItemAdapter.this.mPinListener != null) {
                    ItemAdapter.this.mPinListener.onClicked(i);
                }
            }
        });
        viewHolder.mPin.setImageResource(((RegUbic) this.mItemList.get(i)).pined ? R.drawable.ic_pin : R.drawable.ic_pin_unselected);
        int i2 = this.tipo;
        if (i2 == 0) {
            viewHolder.mGrabView.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mText.setVisibility(this.modo == TabFragment.NORMAL ? 0 : 8);
            viewHolder.mEditText.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mDelete.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mPin.setVisibility(this.modo != TabFragment.EDITAR ? 0 : 8);
        } else if (i2 == 1) {
            viewHolder.mGrabView.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mText.setVisibility(this.modo == TabFragment.NORMAL ? 0 : 8);
            viewHolder.mEditText.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mDelete.setVisibility(this.modo == TabFragment.NORMAL ? 8 : 0);
            viewHolder.mPin.setVisibility(this.modo != TabFragment.EDITAR ? 0 : 8);
        } else if (i2 == 2) {
            viewHolder.mGrabView.setVisibility(8);
            viewHolder.mText.setVisibility(0);
            viewHolder.mEditText.setVisibility(8);
            viewHolder.mDelete.setVisibility(0);
            viewHolder.mPin.setVisibility(4);
        }
        viewHolder.itemView.setTag(this.mItemList.get(i));
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.ItemAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if ((ItemAdapter.this.tipo == 0 || ItemAdapter.this.tipo == 1) && ItemAdapter.this.modo == TabFragment.EDITAR) {
                    return;
                }
                ItemAdapter.this.listener.onItemClick((RegUbic) ItemAdapter.this.mItemList.get(i));
            }
        });
    }

    @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter
    public long getUniqueItemId(int i) {
        return ((RegUbic) this.mItemList.get(i)).id;
    }

    public void setModo(int i) {
        this.modo = i;
    }

    class ViewHolder extends DragItemAdapter.ViewHolder {
        ImageView mDelete;
        EditText mEditText;
        ImageView mPin;
        TextView mText;

        @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter.ViewHolder
        public void onItemClicked(View view) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter.ViewHolder
        public boolean onItemLongClicked(View view) {
            return true;
        }

        ViewHolder(View view) {
            super(view, ItemAdapter.this.mGrabHandleId, ItemAdapter.this.mDragOnLongPress);
            this.mText = (TextView) view.findViewById(R.id.text);
            this.mEditText = (EditText) view.findViewById(R.id.edit_name);
            this.mDelete = (ImageView) view.findViewById(R.id.delete);
            this.mPin = (ImageView) view.findViewById(R.id.pininrow);
        }
    }

    public void setOnDeleteListener(ItemAdapterClickListener itemAdapterClickListener) {
        this.mDeleteListener = itemAdapterClickListener;
    }

    public void setOnPinListener(ItemAdapterClickListener itemAdapterClickListener) {
        this.mPinListener = itemAdapterClickListener;
    }
}
