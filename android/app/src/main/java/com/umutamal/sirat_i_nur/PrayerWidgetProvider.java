package com.umutamal.sirat_i_nur;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.RemoteViews;
import es.antonborri.home_widget.HomeWidgetProvider;

public class PrayerWidgetProvider extends HomeWidgetProvider {

    @Override
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds, SharedPreferences widgetData) {
        for (int appWidgetId : appWidgetIds) {
            
            // Get the view representing the widget layout
            RemoteViews views = new RemoteViews(context.getPackageName(), R.layout.widget_prayer);

            // Read the data sent from Flutter (WidgetService)
            String nextPrayerName = widgetData.getString("next_prayer_name", "Fajr");
            String nextPrayerTime = widgetData.getString("next_prayer_time", "00:00");

            // Update the UI
            views.setTextViewText(R.id.tv_next_prayer_name, nextPrayerName.toUpperCase());
            views.setTextViewText(R.id.tv_next_prayer_time, nextPrayerTime);

            // Instruct the widget manager to update the widget
            appWidgetManager.updateAppWidget(appWidgetId, views);
        }
    }
}
